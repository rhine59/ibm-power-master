 curl -X GET \
 https://resource-controller.cloud.ibm.com/v2/resource_instances \
 -H 'Authorization: Bearer <access_token>' | jq -r '.resources[] | select(.name | contains("<instance_name>")) | .guid'


