# ApiKeyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** | A name or brief explanation of what this API key is used for. | [optional] 
**role** | **str** | Defines the type of API key to create. Only \&quot;private\&quot; is supported for creation. A \&quot;public\&quot; API key already exists by default per company/environment.  | 

## Example

```python
from digitalfemsa.models.api_key_request import ApiKeyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ApiKeyRequest from a JSON string
api_key_request_instance = ApiKeyRequest.from_json(json)
# print the JSON string representation of the object
print(ApiKeyRequest.to_json())

# convert the object into a dict
api_key_request_dict = api_key_request_instance.to_dict()
# create an instance of ApiKeyRequest from a dict
api_key_request_from_dict = ApiKeyRequest.from_dict(api_key_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


