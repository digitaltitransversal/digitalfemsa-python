# digitalfemsa.CustomersApi

All URIs are relative to *https://api.digitalfemsa.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a customer
[**create_customer_fiscal_entities**](CustomersApi.md#create_customer_fiscal_entities) | **POST** /customers/{id}/fiscal_entities | Create Fiscal Entity
[**delete_customer_by_id**](CustomersApi.md#delete_customer_by_id) | **DELETE** /customers/{id} | Delete Customer
[**get_customer_by_id**](CustomersApi.md#get_customer_by_id) | **GET** /customers/{id} | Get Customer
[**get_customers**](CustomersApi.md#get_customers) | **GET** /customers | Get a list of customers
[**update_customer**](CustomersApi.md#update_customer) | **PUT** /customers/{id} | Update customer
[**update_customer_fiscal_entities**](CustomersApi.md#update_customer_fiscal_entities) | **PUT** /customers/{id}/fiscal_entities/{fiscal_entities_id} | Update Fiscal Entity


# **create_customer**
> CustomerResponse create_customer(customer, accept_language=accept_language, x_child_company_id=x_child_company_id)

Create a customer

Creates a new customer for the authenticated company.  Use customers to store and reuse buyer information (for example name, email, phone, and addresses). The created customer can be referenced later when creating orders and other resources. 

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.customer import Customer
from digitalfemsa.models.customer_response import CustomerResponse
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
    api_instance = digitalfemsa.CustomersApi(api_client)
    customer = digitalfemsa.Customer() # Customer | requested field for customer
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Create a customer
        api_response = api_instance.create_customer(customer, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of CustomersApi->create_customer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->create_customer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer** | [**Customer**](Customer.md)| requested field for customer | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CustomerResponse**](CustomerResponse.md)

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

# **create_customer_fiscal_entities**
> CreateCustomerFiscalEntitiesResponse create_customer_fiscal_entities(id, customer_fiscal_entities_request, accept_language=accept_language, x_child_company_id=x_child_company_id)

Create Fiscal Entity

Create a fiscal entity resource for a given customer ID.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.create_customer_fiscal_entities_response import CreateCustomerFiscalEntitiesResponse
from digitalfemsa.models.customer_fiscal_entities_request import CustomerFiscalEntitiesRequest
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
    api_instance = digitalfemsa.CustomersApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    customer_fiscal_entities_request = digitalfemsa.CustomerFiscalEntitiesRequest() # CustomerFiscalEntitiesRequest | requested field for customer fiscal entities
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Create Fiscal Entity
        api_response = api_instance.create_customer_fiscal_entities(id, customer_fiscal_entities_request, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of CustomersApi->create_customer_fiscal_entities:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->create_customer_fiscal_entities: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **customer_fiscal_entities_request** | [**CustomerFiscalEntitiesRequest**](CustomerFiscalEntitiesRequest.md)| requested field for customer fiscal entities | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CreateCustomerFiscalEntitiesResponse**](CreateCustomerFiscalEntitiesResponse.md)

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

# **delete_customer_by_id**
> CustomerResponse delete_customer_by_id(id, accept_language=accept_language, x_child_company_id=x_child_company_id)

Delete Customer

Deleted a customer resource that corresponds to a customer ID.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.customer_response import CustomerResponse
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
    api_instance = digitalfemsa.CustomersApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Delete Customer
        api_response = api_instance.delete_customer_by_id(id, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of CustomersApi->delete_customer_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->delete_customer_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.app-v2.1.0+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |
**422** | parameter validation error |  -  |
**401** | authentication error |  -  |
**404** | not found entity |  -  |
**500** | internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customer_by_id**
> CustomerResponse get_customer_by_id(id, accept_language=accept_language, x_child_company_id=x_child_company_id)

Get Customer

Gets a customer resource that corresponds to a customer ID.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.customer_response import CustomerResponse
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
    api_instance = digitalfemsa.CustomersApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Get Customer
        api_response = api_instance.get_customer_by_id(id, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of CustomersApi->get_customer_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->get_customer_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CustomerResponse**](CustomerResponse.md)

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

# **get_customers**
> CustomersResponse get_customers(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, search=search, next=next, previous=previous)

Get a list of customers

Returns a paginated list of customers for the authenticated company.  Use the [search] parameter to filter results. 

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.customers_response import CustomersResponse
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
    api_instance = digitalfemsa.CustomersApi(api_client)
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)
    limit = 20 # int | The numbers of items to return, the maximum value is 250 (optional) (default to 20)
    search = 'search_example' # str | General order search, e.g. by mail, reference etc. (optional)
    next = 'next_example' # str | next page (optional)
    previous = 'previous_example' # str | previous page (optional)

    try:
        # Get a list of customers
        api_response = api_instance.get_customers(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, search=search, next=next, previous=previous)
        print("The response of CustomersApi->get_customers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->get_customers: %s\n" % e)
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

[**CustomersResponse**](CustomersResponse.md)

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

# **update_customer**
> CustomerResponse update_customer(id, update_customer, accept_language=accept_language, x_child_company_id=x_child_company_id)

Update customer

You can update customer-related data

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.customer_response import CustomerResponse
from digitalfemsa.models.update_customer import UpdateCustomer
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
    api_instance = digitalfemsa.CustomersApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    update_customer = digitalfemsa.UpdateCustomer() # UpdateCustomer | requested field for customer
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Update customer
        api_response = api_instance.update_customer(id, update_customer, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of CustomersApi->update_customer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->update_customer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **update_customer** | [**UpdateCustomer**](UpdateCustomer.md)| requested field for customer | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**CustomerResponse**](CustomerResponse.md)

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

# **update_customer_fiscal_entities**
> UpdateCustomerFiscalEntitiesResponse update_customer_fiscal_entities(id, fiscal_entities_id, customer_update_fiscal_entities_request, accept_language=accept_language, x_child_company_id=x_child_company_id)

Update Fiscal Entity

Update Fiscal Entity resource that corresponds to a customer ID.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.customer_update_fiscal_entities_request import CustomerUpdateFiscalEntitiesRequest
from digitalfemsa.models.update_customer_fiscal_entities_response import UpdateCustomerFiscalEntitiesResponse
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
    api_instance = digitalfemsa.CustomersApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    fiscal_entities_id = 'fis_ent_2tQ8HkkfbauaKP9Ho' # str | identifier
    customer_update_fiscal_entities_request = digitalfemsa.CustomerUpdateFiscalEntitiesRequest() # CustomerUpdateFiscalEntitiesRequest | Request body for updating a customer fiscal entity.
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Update Fiscal Entity
        api_response = api_instance.update_customer_fiscal_entities(id, fiscal_entities_id, customer_update_fiscal_entities_request, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of CustomersApi->update_customer_fiscal_entities:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->update_customer_fiscal_entities: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **fiscal_entities_id** | **str**| identifier | 
 **customer_update_fiscal_entities_request** | [**CustomerUpdateFiscalEntitiesRequest**](CustomerUpdateFiscalEntitiesRequest.md)| Request body for updating a customer fiscal entity. | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**UpdateCustomerFiscalEntitiesResponse**](UpdateCustomerFiscalEntitiesResponse.md)

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

