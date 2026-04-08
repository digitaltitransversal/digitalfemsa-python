# digitalfemsa.ShippingContactsApi

All URIs are relative to *https://api.digitalfemsa.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer_shipping_contacts**](ShippingContactsApi.md#create_customer_shipping_contacts) | **POST** /customers/{id}/shipping_contacts | Create a shipping contact
[**delete_customer_shipping_contacts**](ShippingContactsApi.md#delete_customer_shipping_contacts) | **DELETE** /customers/{id}/shipping_contacts/{shipping_contacts_id} | Delete shipping contacts
[**update_customer_shipping_contacts**](ShippingContactsApi.md#update_customer_shipping_contacts) | **PUT** /customers/{id}/shipping_contacts/{shipping_contacts_id} | Update shipping contacts


# **create_customer_shipping_contacts**
> CustomerShippingContactsResponse create_customer_shipping_contacts(id, customer_shipping_contacts, accept_language=accept_language, x_child_company_id=x_child_company_id)

Create a shipping contact

Creates a new shipping contact for a customer. The shipping contact is associated with the customer identified by `id`.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.customer_shipping_contacts import CustomerShippingContacts
from digitalfemsa.models.customer_shipping_contacts_response import CustomerShippingContactsResponse
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
    api_instance = digitalfemsa.ShippingContactsApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    customer_shipping_contacts = digitalfemsa.CustomerShippingContacts() # CustomerShippingContacts | Request body for creating or updating a customer shipping contact.
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Create a shipping contact
        api_response = api_instance.create_customer_shipping_contacts(id, customer_shipping_contacts, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of ShippingContactsApi->create_customer_shipping_contacts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ShippingContactsApi->create_customer_shipping_contacts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **customer_shipping_contacts** | [**CustomerShippingContacts**](CustomerShippingContacts.md)| Request body for creating or updating a customer shipping contact. | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CustomerShippingContactsResponse**](CustomerShippingContactsResponse.md)

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
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_customer_shipping_contacts**
> CustomerShippingContactsResponse delete_customer_shipping_contacts(id, shipping_contacts_id, accept_language=accept_language, x_child_company_id=x_child_company_id)

Delete shipping contacts

Delete shipping contact that corresponds to a customer ID.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.customer_shipping_contacts_response import CustomerShippingContactsResponse
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
    api_instance = digitalfemsa.ShippingContactsApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    shipping_contacts_id = '6307a60c41de27127515a575' # str | identifier
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Delete shipping contacts
        api_response = api_instance.delete_customer_shipping_contacts(id, shipping_contacts_id, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of ShippingContactsApi->delete_customer_shipping_contacts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ShippingContactsApi->delete_customer_shipping_contacts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **shipping_contacts_id** | **str**| identifier | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CustomerShippingContactsResponse**](CustomerShippingContactsResponse.md)

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
**422** | parameter validation error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_customer_shipping_contacts**
> CustomerShippingContactsResponse update_customer_shipping_contacts(id, shipping_contacts_id, customer_update_shipping_contacts, accept_language=accept_language, x_child_company_id=x_child_company_id)

Update shipping contacts

Update shipping contact that corresponds to a customer ID.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.customer_shipping_contacts_response import CustomerShippingContactsResponse
from digitalfemsa.models.customer_update_shipping_contacts import CustomerUpdateShippingContacts
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
    api_instance = digitalfemsa.ShippingContactsApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    shipping_contacts_id = '6307a60c41de27127515a575' # str | identifier
    customer_update_shipping_contacts = digitalfemsa.CustomerUpdateShippingContacts() # CustomerUpdateShippingContacts | Request body for updating a customer shipping contact.
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Update shipping contacts
        api_response = api_instance.update_customer_shipping_contacts(id, shipping_contacts_id, customer_update_shipping_contacts, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of ShippingContactsApi->update_customer_shipping_contacts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ShippingContactsApi->update_customer_shipping_contacts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **shipping_contacts_id** | **str**| identifier | 
 **customer_update_shipping_contacts** | [**CustomerUpdateShippingContacts**](CustomerUpdateShippingContacts.md)| Request body for updating a customer shipping contact. | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CustomerShippingContactsResponse**](CustomerShippingContactsResponse.md)

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
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

