# CustomerPaymentMethodRequest

Payment method data to attach to a customer.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Type of payment method. | 

## Example

```python
from digitalfemsa.models.customer_payment_method_request import CustomerPaymentMethodRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerPaymentMethodRequest from a JSON string
customer_payment_method_request_instance = CustomerPaymentMethodRequest.from_json(json)
# print the JSON string representation of the object
print(CustomerPaymentMethodRequest.to_json())

# convert the object into a dict
customer_payment_method_request_dict = customer_payment_method_request_instance.to_dict()
# create an instance of CustomerPaymentMethodRequest from a dict
customer_payment_method_request_from_dict = CustomerPaymentMethodRequest.from_dict(customer_payment_method_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


