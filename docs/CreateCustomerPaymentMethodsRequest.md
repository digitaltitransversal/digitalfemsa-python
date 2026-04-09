# CreateCustomerPaymentMethodsRequest

Contains details of the payment methods that the customer has active or has used in Femsa

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Type of payment method. | 
**expires_at** | **int** | Expiration date as unix timestamp (seconds). | [optional] 

## Example

```python
from digitalfemsa.models.create_customer_payment_methods_request import CreateCustomerPaymentMethodsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCustomerPaymentMethodsRequest from a JSON string
create_customer_payment_methods_request_instance = CreateCustomerPaymentMethodsRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCustomerPaymentMethodsRequest.to_json())

# convert the object into a dict
create_customer_payment_methods_request_dict = create_customer_payment_methods_request_instance.to_dict()
# create an instance of CreateCustomerPaymentMethodsRequest from a dict
create_customer_payment_methods_request_from_dict = CreateCustomerPaymentMethodsRequest.from_dict(create_customer_payment_methods_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


