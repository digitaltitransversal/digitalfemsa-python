# digitalfemsa.ShippingsApi

All URIs are relative to *https://api.digitalfemsa.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orders_create_shipping**](ShippingsApi.md#orders_create_shipping) | **POST** /orders/{id}/shipping_lines | Create Shipping
[**orders_delete_shipping**](ShippingsApi.md#orders_delete_shipping) | **DELETE** /orders/{id}/shipping_lines/{shipping_id} | Delete Shipping
[**orders_update_shipping**](ShippingsApi.md#orders_update_shipping) | **PUT** /orders/{id}/shipping_lines/{shipping_id} | Update Shipping


# **orders_create_shipping**
> ShippingOrderResponse orders_create_shipping(id, shipping_request, accept_language=accept_language, x_child_company_id=x_child_company_id)

Create Shipping

Creates a new shipping line for an existing order. The shipping line is added to the order identified by `id`. The response returns the created shipping line.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.shipping_order_response import ShippingOrderResponse
from digitalfemsa.models.shipping_request import ShippingRequest
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
    api_instance = digitalfemsa.ShippingsApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    shipping_request = digitalfemsa.ShippingRequest() # ShippingRequest | Request body for creating or updating a shipping line.
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Create Shipping
        api_response = api_instance.orders_create_shipping(id, shipping_request, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of ShippingsApi->orders_create_shipping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ShippingsApi->orders_create_shipping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **shipping_request** | [**ShippingRequest**](ShippingRequest.md)| Request body for creating or updating a shipping line. | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**ShippingOrderResponse**](ShippingOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful |  -  |
**401** | authentication error |  -  |
**404** | not found entity |  -  |
**422** | parameter validation error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orders_delete_shipping**
> ShippingOrderResponse orders_delete_shipping(id, shipping_id, accept_language=accept_language, x_child_company_id=x_child_company_id)

Delete Shipping

Deletes an existing shipping line from an order. The shipping line identified by `shipping_id` belongs to the order identified by `id`.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.shipping_order_response import ShippingOrderResponse
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
    api_instance = digitalfemsa.ShippingsApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    shipping_id = 'ship_lin_2tQ974hSHcsdeSZHG' # str | identifier
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Delete Shipping
        api_response = api_instance.orders_delete_shipping(id, shipping_id, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of ShippingsApi->orders_delete_shipping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ShippingsApi->orders_delete_shipping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **shipping_id** | **str**| identifier | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**ShippingOrderResponse**](ShippingOrderResponse.md)

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
**422** | parameter validation error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orders_update_shipping**
> ShippingOrderResponse orders_update_shipping(id, shipping_id, shipping_request, accept_language=accept_language, x_child_company_id=x_child_company_id)

Update Shipping

Updates an existing shipping line for an order. The shipping line identified by `shipping_id` belongs to the order identified by `id`. Only the fields provided in the request body are updated.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.shipping_order_response import ShippingOrderResponse
from digitalfemsa.models.shipping_request import ShippingRequest
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
    api_instance = digitalfemsa.ShippingsApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    shipping_id = 'ship_lin_2tQ974hSHcsdeSZHG' # str | identifier
    shipping_request = digitalfemsa.ShippingRequest() # ShippingRequest | Request body for creating or updating a shipping line.
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Update Shipping
        api_response = api_instance.orders_update_shipping(id, shipping_id, shipping_request, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of ShippingsApi->orders_update_shipping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ShippingsApi->orders_update_shipping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **shipping_id** | **str**| identifier | 
 **shipping_request** | [**ShippingRequest**](ShippingRequest.md)| Request body for creating or updating a shipping line. | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**ShippingOrderResponse**](ShippingOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful |  -  |
**401** | authentication error |  -  |
**404** | not found entity |  -  |
**422** | parameter validation error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

