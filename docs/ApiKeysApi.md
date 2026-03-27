# digitalfemsa.ApiKeysApi

All URIs are relative to *https://api.digitalfemsa.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_api_key**](ApiKeysApi.md#create_api_key) | **POST** /api_keys | Create API key
[**delete_api_key**](ApiKeysApi.md#delete_api_key) | **DELETE** /api_keys/{id} | Delete Api Key
[**get_api_key**](ApiKeysApi.md#get_api_key) | **GET** /api_keys/{id} | Get Api Key
[**get_api_keys**](ApiKeysApi.md#get_api_keys) | **GET** /api_keys | List API keys
[**update_api_key**](ApiKeysApi.md#update_api_key) | **PUT** /api_keys/{id} | Update Api Key


# **create_api_key**
> ApiKeyCreateResponse create_api_key(api_key_request, accept_language=accept_language, x_child_company_id=x_child_company_id)

Create API key

Creates a new API key.  The response includes an `authentication_token` that is shown only once (at creation time). Copy and store it securely. 

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.api_key_create_response import ApiKeyCreateResponse
from digitalfemsa.models.api_key_request import ApiKeyRequest
from digitalfemsa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.digitalfemsa.io
# See configuration.py for a list of all supported configuration parameters.
configuration = digitalfemsa.Configuration(
    host = "https://api.digitalfemsa.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = digitalfemsa.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with digitalfemsa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = digitalfemsa.ApiKeysApi(api_client)
    api_key_request = digitalfemsa.ApiKeyRequest() # ApiKeyRequest | requested field for a api keys
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Create API key
        api_response = api_instance.create_api_key(api_key_request, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of ApiKeysApi->create_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ApiKeysApi->create_api_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key_request** | [**ApiKeyRequest**](ApiKeyRequest.md)| requested field for a api keys | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**ApiKeyCreateResponse**](ApiKeyCreateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |
**401** | authentication error |  -  |
**422** | parameter validation error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_api_key**
> DeleteApiKeysResponse delete_api_key(id, accept_language=accept_language)

Delete Api Key

Deletes a api key that corresponds to a api key ID

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.delete_api_keys_response import DeleteApiKeysResponse
from digitalfemsa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.digitalfemsa.io
# See configuration.py for a list of all supported configuration parameters.
configuration = digitalfemsa.Configuration(
    host = "https://api.digitalfemsa.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = digitalfemsa.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with digitalfemsa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = digitalfemsa.ApiKeysApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')

    try:
        # Delete Api Key
        api_response = api_instance.delete_api_key(id, accept_language=accept_language)
        print("The response of ApiKeysApi->delete_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ApiKeysApi->delete_api_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]

### Return type

[**DeleteApiKeysResponse**](DeleteApiKeysResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful |  * Content-Type - The format of the response body <br>  |
**401** | authentication error |  -  |
**404** | not found entity |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_api_key**
> ApiKeyResponse get_api_key(id, accept_language=accept_language, x_child_company_id=x_child_company_id)

Get Api Key

Gets a api key that corresponds to a api key ID

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.api_key_response import ApiKeyResponse
from digitalfemsa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.digitalfemsa.io
# See configuration.py for a list of all supported configuration parameters.
configuration = digitalfemsa.Configuration(
    host = "https://api.digitalfemsa.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = digitalfemsa.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with digitalfemsa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = digitalfemsa.ApiKeysApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Get Api Key
        api_response = api_instance.get_api_key(id, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of ApiKeysApi->get_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ApiKeysApi->get_api_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful |  * Content-Type - The format of the response body <br>  |
**401** | authentication error |  -  |
**404** | not found entity |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_api_keys**
> GetApiKeysResponse get_api_keys(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, next=next, previous=previous, search=search)

List API keys

Retrieves a paginated list of API keys for the authenticated account.  Use the pagination parameters (`limit`, `next_page`, `previous_page`) to navigate through results. Use the `search` query parameter to perform a general search (for example by key `id` or description). 

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.get_api_keys_response import GetApiKeysResponse
from digitalfemsa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.digitalfemsa.io
# See configuration.py for a list of all supported configuration parameters.
configuration = digitalfemsa.Configuration(
    host = "https://api.digitalfemsa.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = digitalfemsa.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with digitalfemsa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = digitalfemsa.ApiKeysApi(api_client)
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)
    limit = 20 # int | The numbers of items to return, the maximum value is 250 (optional) (default to 20)
    next = 'next_example' # str | next page (optional)
    previous = 'previous_example' # str | previous page (optional)
    search = 'search_example' # str | General search, e.g. by id, description, prefix (optional)

    try:
        # List API keys
        api_response = api_instance.get_api_keys(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, next=next, previous=previous, search=search)
        print("The response of ApiKeysApi->get_api_keys:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ApiKeysApi->get_api_keys: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 
 **limit** | **int**| The numbers of items to return, the maximum value is 250 | [optional] [default to 20]
 **next** | **str**| next page | [optional] 
 **previous** | **str**| previous page | [optional] 
 **search** | **str**| General search, e.g. by id, description, prefix | [optional] 

### Return type

[**GetApiKeysResponse**](GetApiKeysResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful |  -  |
**401** | authentication error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_api_key**
> ApiKeyResponse update_api_key(id, accept_language=accept_language, api_key_update_request=api_key_update_request)

Update Api Key

Update an existing api key

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.api_key_response import ApiKeyResponse
from digitalfemsa.models.api_key_update_request import ApiKeyUpdateRequest
from digitalfemsa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.digitalfemsa.io
# See configuration.py for a list of all supported configuration parameters.
configuration = digitalfemsa.Configuration(
    host = "https://api.digitalfemsa.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = digitalfemsa.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with digitalfemsa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = digitalfemsa.ApiKeysApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    api_key_update_request = digitalfemsa.ApiKeyUpdateRequest() # ApiKeyUpdateRequest |  (optional)

    try:
        # Update Api Key
        api_response = api_instance.update_api_key(id, accept_language=accept_language, api_key_update_request=api_key_update_request)
        print("The response of ApiKeysApi->update_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ApiKeysApi->update_api_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **api_key_update_request** | [**ApiKeyUpdateRequest**](ApiKeyUpdateRequest.md)|  | [optional] 

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |
**404** | not found entity |  -  |
**401** | authentication error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

