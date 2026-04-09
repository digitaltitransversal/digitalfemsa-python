# CustomerPaymentMethodsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Type of payment method. | 
**expires_at** | **int** | Expiration date as unix timestamp (seconds). | [optional] 

## Example

```python
from digitalfemsa.models.customer_payment_methods_request import CustomerPaymentMethodsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerPaymentMethodsRequest from a JSON string
customer_payment_methods_request_instance = CustomerPaymentMethodsRequest.from_json(json)
# print the JSON string representation of the object
print(CustomerPaymentMethodsRequest.to_json())

# convert the object into a dict
customer_payment_methods_request_dict = customer_payment_methods_request_instance.to_dict()
# create an instance of CustomerPaymentMethodsRequest from a dict
customer_payment_methods_request_from_dict = CustomerPaymentMethodsRequest.from_dict(customer_payment_methods_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


