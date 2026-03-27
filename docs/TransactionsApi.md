# digitalfemsa.TransactionsApi

All URIs are relative to *https://api.digitalfemsa.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transaction**](TransactionsApi.md#get_transaction) | **GET** /transactions/{id} | Get transaction
[**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /transactions | List transactions


# **get_transaction**
> TransactionResponse get_transaction(id, accept_language=accept_language, x_child_company_id=x_child_company_id)

Get transaction

Retrieves the details of a transaction by its ID.

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.transaction_response import TransactionResponse
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
    api_instance = digitalfemsa.TransactionsApi(api_client)
    id = '6307a60c41de27127515a575' # str | Identifier of the resource
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)

    try:
        # Get transaction
        api_response = api_instance.get_transaction(id, accept_language=accept_language, x_child_company_id=x_child_company_id)
        print("The response of TransactionsApi->get_transaction:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->get_transaction: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier of the resource | 
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

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

# **get_transactions**
> GetTransactionsResponse get_transactions(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, next=next, previous=previous, id=id, charge_id=charge_id, type=type, currency=currency)

List transactions

Returns a paginated list of transactions (ledger movements).  A transaction is a movement that represents the financial impact of payment operations, including amounts, fees, and net values. Transactions can be linked to a charge and may be linked to a transfer (payout) when they are included in a payout.  If you need payout-level information (destination, statement reference/description, payout status), use GET /transfers. 

### Example

* Bearer Authentication (bearerAuth):

```python
import digitalfemsa
from digitalfemsa.models.get_transactions_response import GetTransactionsResponse
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
    api_instance = digitalfemsa.TransactionsApi(api_client)
    accept_language = 'es' # str | Use for knowing which language to use (optional) (default to 'es')
    x_child_company_id = '6441b6376b60c3a638da80af' # str | In the case of a holding company, the company id of the child company to which will process the request. (optional)
    limit = 20 # int | The numbers of items to return, the maximum value is 250 (optional) (default to 20)
    next = 'next_example' # str | next page (optional)
    previous = 'previous_example' # str | previous page (optional)
    id = '65412a893cd69a0001c25892' # str | id of the object to be retrieved (optional)
    charge_id = '65412a893cd69a0001c25892' # str | id of the charge used for filtering (optional)
    type = 'capture' # str | type of the object to be retrieved (optional)
    currency = 'MXN' # str | currency of the object to be retrieved (optional)

    try:
        # List transactions
        api_response = api_instance.get_transactions(accept_language=accept_language, x_child_company_id=x_child_company_id, limit=limit, next=next, previous=previous, id=id, charge_id=charge_id, type=type, currency=currency)
        print("The response of TransactionsApi->get_transactions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->get_transactions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept_language** | **str**| Use for knowing which language to use | [optional] [default to &#39;es&#39;]
 **x_child_company_id** | **str**| In the case of a holding company, the company id of the child company to which will process the request. | [optional] 
 **limit** | **int**| The numbers of items to return, the maximum value is 250 | [optional] [default to 20]
 **next** | **str**| next page | [optional] 
 **previous** | **str**| previous page | [optional] 
 **id** | **str**| id of the object to be retrieved | [optional] 
 **charge_id** | **str**| id of the charge used for filtering | [optional] 
 **type** | **str**| type of the object to be retrieved | [optional] 
 **currency** | **str**| currency of the object to be retrieved | [optional] 

### Return type

[**GetTransactionsResponse**](GetTransactionsResponse.md)

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

