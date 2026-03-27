# digitalfemsa.ChargesApi

All URIs are relative to *https://api.digitalfemsa.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_charges**](ChargesApi.md#get_charges) | **GET** /charges | List charges
[**orders_create_charge**](ChargesApi.md#orders_create_charge) | **POST** /orders/{id}/charges | Create a charge for an order
[**update_charge**](ChargesApi.md#update_charge) | **PUT** /charges/{id} | Update a charge


# **get_charges**
> GetChargesResponse get_charges(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, next=next, previous=previous, search=search)

List charges

Retrieves a paginated list of charges for the authenticated account.  Use the pagination parameters (`limit`, `next_page`, `previous_page`) to navigate through results. Use `search` to filter charges (for example by id or reference). 

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.get_charges_response import GetChargesResponse
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
    api_instance = digitalfemsa.ChargesApi(api_client)
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)
    limit = 20 # int | The numbers of items to return, the maximum value is 250 (optional) (default to 20)
    next = 'next_example' # str | next page (optional)
    previous = 'previous_example' # str | previous page (optional)
    search = 'search_example' # str | General order search, e.g. by mail, reference etc. (optional)

    try:
        # List charges
        api_response = api_instance.get_charges(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, next=next, previous=previous, search=search)
        print("The response of ChargesApi->get_charges:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ChargesApi->get_charges: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 
 **limit** | **int**| The numbers of items to return, the maximum value is 250 | [optional] [default to 20]
 **next** | **str**| next page | [optional] 
 **previous** | **str**| previous page | [optional] 
 **search** | **str**| General order search, e.g. by mail, reference etc. | [optional] 

### Return type

[**GetChargesResponse**](GetChargesResponse.md)

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
**422** | whitelist validation error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orders_create_charge**
> ChargeOrderResponse orders_create_charge(id, charge_request, accept_language=accept_language, x_child_company_id=x_child_company_id)

Create a charge for an order

Creates a new charge associated with an existing order.  Notes: - The charge is created for the order identified by the path parameter `id`. - Depending on the payment method, the charge may be created in a non-final status (for example, pending). - If the order does not meet the required conditions, the API may respond with **428 Precondition Required**. 

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.charge_order_response import ChargeOrderResponse
from digitalfemsa.models.charge_request import ChargeRequest
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
    api_instance = digitalfemsa.ChargesApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    charge_request = digitalfemsa.ChargeRequest() # ChargeRequest | requested field for a charge
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Create a charge for an order
        api_response = api_instance.orders_create_charge(id, charge_request, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of ChargesApi->orders_create_charge:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ChargesApi->orders_create_charge: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **charge_request** | [**ChargeRequest**](ChargeRequest.md)| requested field for a charge | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**ChargeOrderResponse**](ChargeOrderResponse.md)

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
**404** | not found entity |  -  |
**422** | parameter validation error |  -  |
**428** | Precondition Required |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_charge**
> ChargeResponse update_charge(id, charge_update_request, accept_language=accept_language, x_child_company_id=x_child_company_id)

Update a charge

Updates an existing charge. Only `reference_id` can be updated.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.charge_response import ChargeResponse
from digitalfemsa.models.charge_update_request import ChargeUpdateRequest
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
    api_instance = digitalfemsa.ChargesApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    charge_update_request = digitalfemsa.ChargeUpdateRequest() # ChargeUpdateRequest | requested field for update a charge
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Update a charge
        api_response = api_instance.update_charge(id, charge_update_request, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of ChargesApi->update_charge:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ChargesApi->update_charge: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **charge_update_request** | [**ChargeUpdateRequest**](ChargeUpdateRequest.md)| requested field for update a charge | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |
**422** | whitelist validation error |  -  |
**404** | not found entity |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

