# ChargeResponsePaymentMethod


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**object** | **str** |  | 
**auth_code** | **str** |  | [optional] 
**cashier_id** | **str** |  | [optional] 
**reference** | **str** |  | [optional] 
**barcode_url** | **str** |  | [optional] 
**expires_at** | **int** |  | [optional] 
**service_name** | **str** |  | [optional] 
**store** | **str** |  | [optional] 
**store_name** | **str** |  | [optional] 

## Example

```python
from digitalfemsa.models.charge_response_payment_method import ChargeResponsePaymentMethod

# TODO update the JSON string below
json = "{}"
# create an instance of ChargeResponsePaymentMethod from a JSON string
charge_response_payment_method_instance = ChargeResponsePaymentMethod.from_json(json)
# print the JSON string representation of the object
print(ChargeResponsePaymentMethod.to_json())

# convert the object into a dict
charge_response_payment_method_dict = charge_response_payment_method_instance.to_dict()
# create an instance of ChargeResponsePaymentMethod from a dict
charge_response_payment_method_from_dict = ChargeResponsePaymentMethod.from_dict(charge_response_payment_method_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


