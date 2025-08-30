import docker
import requests
import argparse

parser = argparse.ArgumentParser(description="Consul Docker Agent Service")
parser.add_argument("--name",required=True)
parser.add_argument("--consul-server",required=True,help="consul server address, e.g. http://127.0.0.1:8500")
parser.add_argument("--traefik-server",required=True,help="traefik server address, e.g. http://127.0.0.1:8080")

args = parser.parse_args()

agent_name = args.name
consul_server = args.consul_server
traefik_server = args.traefik_server

def register(container):
    info = container.attrs
    name = container.name
    ip = container.attrs['NetworkSettings']['IPAddress']

    port = 80

    payload = {
        "ID": name,
        "Name": name,
        "Address": ip,
        "Port": port,
        "Tags": info.get("Config", {}).get("Labels", {})
    }

    requests.put(f"{server}/v1/agent/service/register", json=payload)

def deregister(container_id):
    requests.put(f"{server}/v1/agent/service/deregister/{container_id}")

res = requests.get(f"{args.traefik_server}/api/http/routers")
print(res.json())

client = docker.from_env()

for t in client.events(decode=True):
    print(t)
    # if t["Type"] == "container":
    #     cid = t["id"]
    #     container = client.containers.get(cid)

    #     if t["Action"] == "start":
    #         register(container)
    #     elif t["Action"] == "die":
    #         deregister(container.name)