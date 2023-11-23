import requests

response = requests.get("https://api.github.com/repos/kubernetes/kubernetes/pulls")

response_status = response.status_code

if response_status == 200:
    print("Request Status: ",response_status)
    response_json = response.json()

    for item in range(len(response_json)):
        
        request_id = response_json[item]["id"]
        request_user = response_json[item]["user"]["login"]
        response_create_date = response_json[item]["created_at"]
        print(f"Request id: {request_id}")
        print(f"Requester : {request_user}")
        print(f"Create Date : {response_create_date} \n")

else:
    print(f"There is an issue with response code {responce_status}")
    


