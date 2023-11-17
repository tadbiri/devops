import boto3

def list_ec2_instances(region):
    ec2 = boto3.client('ec2', region_name=region)
    response = ec2.describe_instances()

    for reservation in response['Reservations']:
        for instance in reservation['Instances']:
            instance_id = instance['InstanceId']
            instance_state = instance['State']['Name']
            instance_type = instance['InstanceType']
            private_ip = instance.get('PrivateIpAddress', 'N/A')
            public_ip = instance.get('PublicIpAddress', 'N/A')

            print(f"Instance ID: {instance_id}")
            print(f"State: {instance_state}")
            print(f"Type: {instance_type}")
            print(f"Private IP: {private_ip}")
            print(f"Public IP: {public_ip}")
            print("----------------------")

if __name__ == "__main__":
    aws_region = 'your_aws_region'
    list_ec2_instances(aws_region)