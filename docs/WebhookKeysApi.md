# digitalfemsa.WebhookKeysApi

All URIs are relative to *https://api.digitalfemsa.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook_key**](WebhookKeysApi.md#create_webhook_key) | **POST** /webhook_keys | Create Webhook Key
[**delete_webhook_key**](WebhookKeysApi.md#delete_webhook_key) | **DELETE** /webhook_keys/{id} | Delete webhook key
[**get_webhook_key**](WebhookKeysApi.md#get_webhook_key) | **GET** /webhook_keys/{id} | Get webhook key
[**get_webhook_keys**](WebhookKeysApi.md#get_webhook_keys) | **GET** /webhook_keys | Get List of Webhook Keys
[**update_webhook_key**](WebhookKeysApi.md#update_webhook_key) | **PUT** /webhook_keys/{id} | Update webhook key


# **create_webhook_key**
> WebhookKeyCreateResponse create_webhook_key(accept_language=accept_language, webhook_key_request=webhook_key_request)

Create Webhook Key

Creates a new webhook signing key for the current company.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.webhook_key_create_response import WebhookKeyCreateResponse
from digitalfemsa.models.webhook_key_request import WebhookKeyRequest
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
    api_instance = digitalfemsa.WebhookKeysApi(api_client)
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    webhook_key_request = digitalfemsa.WebhookKeyRequest() # WebhookKeyRequest |  (optional)

    try:
        # Create Webhook Key
        api_response = api_instance.create_webhook_key(accept_language=accept_language, webhook_key_request=webhook_key_request)
        print("The response of WebhookKeysApi->create_webhook_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WebhookKeysApi->create_webhook_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **webhook_key_request** | [**WebhookKeyRequest**](WebhookKeyRequest.md)|  | [optional] 

### Return type

[**WebhookKeyCreateResponse**](WebhookKeyCreateResponse.md)

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
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_webhook_key**
> WebhookKeyDeleteResponse delete_webhook_key(id, accept_language=accept_language)

Delete webhook key

Deletes a webhook signing key.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.webhook_key_delete_response import WebhookKeyDeleteResponse
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
    api_instance = digitalfemsa.WebhookKeysApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')

    try:
        # Delete webhook key
        api_response = api_instance.delete_webhook_key(id, accept_language=accept_language)
        print("The response of WebhookKeysApi->delete_webhook_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WebhookKeysApi->delete_webhook_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]

### Return type

[**WebhookKeyDeleteResponse**](WebhookKeyDeleteResponse.md)

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
**404** | not found entity |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_webhook_key**
> WebhookKeyResponse get_webhook_key(id, accept_language=accept_language, x_child_company_id=x_child_company_id)

Get webhook key

Retrieves the details of a webhook signing key by its ID.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.webhook_key_response import WebhookKeyResponse
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
    api_instance = digitalfemsa.WebhookKeysApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Get webhook key
        api_response = api_instance.get_webhook_key(id, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of WebhookKeysApi->get_webhook_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WebhookKeysApi->get_webhook_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**WebhookKeyResponse**](WebhookKeyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |
**401** | authentication error |  -  |
**404** | not found entity |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_webhook_keys**
> GetWebhookKeysResponse get_webhook_keys(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, search=search, next=next, previous=previous)

Get List of Webhook Keys

Consume the list of webhook keys you have

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.get_webhook_keys_response import GetWebhookKeysResponse
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
    api_instance = digitalfemsa.WebhookKeysApi(api_client)
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)
    limit = 20 # int | The numbers of items to return, the maximum value is 250 (optional) (default to 20)
    search = 'search_example' # str | General order search, e.g. by mail, reference etc. (optional)
    next = 'next_example' # str | next page (optional)
    previous = 'previous_example' # str | previous page (optional)

    try:
        # Get List of Webhook Keys
        api_response = api_instance.get_webhook_keys(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, search=search, next=next, previous=previous)
        print("The response of WebhookKeysApi->get_webhook_keys:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WebhookKeysApi->get_webhook_keys: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 
 **limit** | **int**| The numbers of items to return, the maximum value is 250 | [optional] [default to 20]
 **search** | **str**| General order search, e.g. by mail, reference etc. | [optional] 
 **next** | **str**| next page | [optional] 
 **previous** | **str**| previous page | [optional] 

### Return type

[**GetWebhookKeysResponse**](GetWebhookKeysResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |
**401** | authentication error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_webhook_key**
> WebhookKeyResponse update_webhook_key(id, accept_language=accept_language, webhook_key_update_request=webhook_key_update_request)

Update webhook key

Activates or deactivates an existing webhook signing key.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.webhook_key_response import WebhookKeyResponse
from digitalfemsa.models.webhook_key_update_request import WebhookKeyUpdateRequest
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
    api_instance = digitalfemsa.WebhookKeysApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    webhook_key_update_request = digitalfemsa.WebhookKeyUpdateRequest() # WebhookKeyUpdateRequest |  (optional)

    try:
        # Update webhook key
        api_response = api_instance.update_webhook_key(id, accept_language=accept_language, webhook_key_update_request=webhook_key_update_request)
        print("The response of WebhookKeysApi->update_webhook_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WebhookKeysApi->update_webhook_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **webhook_key_update_request** | [**WebhookKeyUpdateRequest**](WebhookKeyUpdateRequest.md)|  | [optional] 

### Return type

[**WebhookKeyResponse**](WebhookKeyResponse.md)

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

