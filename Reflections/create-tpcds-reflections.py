import requests
import json
import pprint

server_url = "http://dremio-c1:9047"


def getLogin(url, user, password):
    user_info = {
        'userName': user,
        'password': password
    }
    header_values = {
        "content-type": "application/json"
    }
    token = "**"
    login_url = "{}/apiv2/login".format(url)
    print(login_url)
    resp = requests.post(login_url, data=json.dumps(user_info), headers=header_values)
    if resp.status_code == 200:
        token = "_dremio{}".format(json.loads(resp.content)['token'])
        print("Token", token)
    else:
        print(resp)
    return token

reflection_body = {
  "entityType": "reflection",
  "name": String,
  "enabled": True,
  "type": String ["AGGREGATION", "RAW"] [immutable after creation],
  "datasetId": String [immutable after creation],
  "dimensionFields": [Reflection Field With Granularity] [optional, only valid for AGGREGATION],
  "measureFields": [Reflection Field] [optional, only valid for AGGREGATION],
  "displayFields": [Reflection Field] [optional, only valid for RAW],
  "distributionFields": [Reflection Field] [optional],
  "partitionFields": [Reflection Field] [optional],
  "sortFields": [Reflection Field] [optional],
  "partitionDistributionStrategy": String ["CONSOLIDATED", "STRIPED"],
}

def createReflections(url, token):
    header_values = {
        "content-type": "application/json",
        "authorization": token
    }
    refl_url = "{}/api/v3/reflection".format(url)
    print(refl_url)
    resp = requests.get(refl_url, headers=header_values)
    if resp.status_code == 200:
        token = json.loads(resp.content)
        print("Token", token)
    else:
        print(resp)
    return token