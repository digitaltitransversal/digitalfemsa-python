# ChargeRequestPaymentMethod

Payment method used in the charge. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expires_at** | **int** | Method expiration date as unix timestamp (applies to some payment methods, e.g. cash). | [optional] 
**type** | **str** |  | 
**payment_source_id** | **str** | Identifier of a saved payment source to be used for this charge (if applicable). | [optional] 

## Example

```python
from digitalfemsa.models.charge_request_payment_method import ChargeRequestPaymentMethod

# TODO update the JSON string below
json = "{}"
# create an instance of ChargeRequestPaymentMethod from a JSON string
charge_request_payment_method_instance = ChargeRequestPaymentMethod.from_json(json)
# print the JSON string representation of the object
print(ChargeRequestPaymentMethod.to_json())

# convert the object into a dict
charge_request_payment_method_dict = charge_request_payment_method_instance.to_dict()
# create an instance of ChargeRequestPaymentMethod from a dict
charge_request_payment_method_from_dict = ChargeRequestPaymentMethod.from_dict(charge_request_payment_method_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


