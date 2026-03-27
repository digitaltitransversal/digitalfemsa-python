# ApiKeyCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** | Indicates if the api key is active | [optional] 
**created_at** | **int** | Unix timestamp in seconds of when the api key was created | [optional] 
**updated_at** | **int** | Unix timestamp in seconds of when the api key was last updated | [optional] 
**deactivated_at** | **int** | Unix timestamp in seconds of when the api key was deleted | [optional] 
**description** | **str** | A name or brief explanation of what this api key is used for | [optional] 
**id** | **str** | Unique identifier of the api key | [optional] 
**livemode** | **bool** | Indicates if the api key is in production | [optional] 
**deleted** | **bool** | Indicates if the api key was deleted | [optional] 
**object** | **str** | Object name, value is &#39;api_key&#39; | [optional] 
**prefix** | **str** | The first few characters of the authentication_token | [optional] 
**role** | **str** | Indicates if the api key is private or public | [optional] 
**authentication_token** | **str** | Used as the username for Basic Authentication, with a blank password. This value is shown only once (when the key is created). Copy and store it securely.  | [optional] 

## Example

```python
from digitalfemsa.models.api_key_create_response import ApiKeyCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ApiKeyCreateResponse from a JSON string
api_key_create_response_instance = ApiKeyCreateResponse.from_json(json)
# print the JSON string representation of the object
print(ApiKeyCreateResponse.to_json())

# convert the object into a dict
api_key_create_response_dict = api_key_create_response_instance.to_dict()
# create an instance of ApiKeyCreateResponse from a dict
api_key_create_response_from_dict = ApiKeyCreateResponse.from_dict(api_key_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


