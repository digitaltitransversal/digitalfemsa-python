# digitalfemsa.PaymentLinkApi

All URIs are relative to *https://api.digitalfemsa.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_checkout**](PaymentLinkApi.md#cancel_checkout) | **PUT** /checkouts/{id}/cancel | Cancel Payment Link
[**create_checkout**](PaymentLinkApi.md#create_checkout) | **POST** /checkouts | Create Payment Link
[**email_checkout**](PaymentLinkApi.md#email_checkout) | **POST** /checkouts/{id}/email | Send an email
[**get_checkout**](PaymentLinkApi.md#get_checkout) | **GET** /checkouts/{id} | Get a payment link by ID
[**get_checkouts**](PaymentLinkApi.md#get_checkouts) | **GET** /checkouts | Get a list of payment links


# **cancel_checkout**
> CheckoutResponse cancel_checkout(id, accept_language=accept_language, x_child_company_id=x_child_company_id)

Cancel Payment Link

Cancels an existing payment link. After cancellation, the link can no longer be used to generate new payments. This operation is idempotent: cancelling an already cancelled payment link returns the current resource representation.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.checkout_response import CheckoutResponse
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
    api_instance = digitalfemsa.PaymentLinkApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Cancel Payment Link
        api_response = api_instance.cancel_checkout(id, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of PaymentLinkApi->cancel_checkout:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentLinkApi->cancel_checkout: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

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
**402** | payment required error |  -  |
**404** | not found entity |  -  |
**422** | parameter validation error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_checkout**
> CheckoutResponse create_checkout(checkout, accept_language=accept_language, x_child_company_id=x_child_company_id)

Create Payment Link

Creates a Payment Link: a shareable URL that lets your customer pay without you building a custom checkout. Configure the link type, allowed payment methods, and expiration. The request also includes an order_template (currency and line items) used to generate an Order when the customer completes a payment. Use recurrent=false for a single-use link, or recurrent=true to allow multiple payments (limited by payments_limit_count).

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.checkout import Checkout
from digitalfemsa.models.checkout_response import CheckoutResponse
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
    api_instance = digitalfemsa.PaymentLinkApi(api_client)
    checkout = digitalfemsa.Checkout() # Checkout | requested field for checkout
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Create Payment Link
        api_response = api_instance.create_checkout(checkout, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of PaymentLinkApi->create_checkout:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentLinkApi->create_checkout: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkout** | [**Checkout**](Checkout.md)| requested field for checkout | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

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
**402** | payment required error |  -  |
**422** | parameter validation error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_checkout**
> CheckoutResponse email_checkout(id, email_checkout_request, accept_language=accept_language, x_child_company_id=x_child_company_id)

Send an email

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.checkout_response import CheckoutResponse
from digitalfemsa.models.email_checkout_request import EmailCheckoutRequest
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
    api_instance = digitalfemsa.PaymentLinkApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    email_checkout_request = digitalfemsa.EmailCheckoutRequest() # EmailCheckoutRequest | requested field for sms checkout
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Send an email
        api_response = api_instance.email_checkout(id, email_checkout_request, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of PaymentLinkApi->email_checkout:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentLinkApi->email_checkout: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **email_checkout_request** | [**EmailCheckoutRequest**](EmailCheckoutRequest.md)| requested field for sms checkout | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

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
**402** | payment required error |  -  |
**404** | not found entity |  -  |
**422** | parameter validation error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_checkout**
> CheckoutResponse get_checkout(id, accept_language=accept_language, x_child_company_id=x_child_company_id)

Get a payment link by ID

Retrieves the details of a checkout by its ID.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.checkout_response import CheckoutResponse
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
    api_instance = digitalfemsa.PaymentLinkApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Get a payment link by ID
        api_response = api_instance.get_checkout(id, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of PaymentLinkApi->get_checkout:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentLinkApi->get_checkout: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

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
**402** | payment required error |  -  |
**404** | not found entity |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_checkouts**
> CheckoutsResponse get_checkouts(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, search=search, next=next, previous=previous)

Get a list of payment links

Returns a paginated list of payment links created by the merchant. Results can be navigated using the pagination parameters.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.checkouts_response import CheckoutsResponse
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
    api_instance = digitalfemsa.PaymentLinkApi(api_client)
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)
    limit = 20 # int | The numbers of items to return, the maximum value is 250 (optional) (default to 20)
    search = 'search_example' # str | General order search, e.g. by mail, reference etc. (optional)
    next = 'next_example' # str | next page (optional)
    previous = 'previous_example' # str | previous page (optional)

    try:
        # Get a list of payment links
        api_response = api_instance.get_checkouts(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, search=search, next=next, previous=previous)
        print("The response of PaymentLinkApi->get_checkouts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentLinkApi->get_checkouts: %s\n" % e)
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

[**CheckoutsResponse**](CheckoutsResponse.md)

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
**402** | payment required error |  -  |
**422** | parameter validation error |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

