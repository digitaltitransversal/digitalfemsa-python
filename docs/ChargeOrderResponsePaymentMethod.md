# ChargeOrderResponsePaymentMethod


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
from digitalfemsa.models.charge_order_response_payment_method import ChargeOrderResponsePaymentMethod

# TODO update the JSON string below
json = "{}"
# create an instance of ChargeOrderResponsePaymentMethod from a JSON string
charge_order_response_payment_method_instance = ChargeOrderResponsePaymentMethod.from_json(json)
# print the JSON string representation of the object
print(ChargeOrderResponsePaymentMethod.to_json())

# convert the object into a dict
charge_order_response_payment_method_dict = charge_order_response_payment_method_instance.to_dict()
# create an instance of ChargeOrderResponsePaymentMethod from a dict
charge_order_response_payment_method_from_dict = ChargeOrderResponsePaymentMethod.from_dict(charge_order_response_payment_method_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


