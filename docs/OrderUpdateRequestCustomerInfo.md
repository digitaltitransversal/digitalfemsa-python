# OrderUpdateRequestCustomerInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | 
**name** | **str** |  | 
**email** | **str** |  | 
**phone** | **str** |  | [optional] 
**corporate** | **bool** |  | [optional] 

## Example

```python
from digitalfemsa.models.order_update_request_customer_info import OrderUpdateRequestCustomerInfo

# TODO update the JSON string below
json = "{}"
# create an instance of OrderUpdateRequestCustomerInfo from a JSON string
order_update_request_customer_info_instance = OrderUpdateRequestCustomerInfo.from_json(json)
# print the JSON string representation of the object
print(OrderUpdateRequestCustomerInfo.to_json())

# convert the object into a dict
order_update_request_customer_info_dict = order_update_request_customer_info_instance.to_dict()
# create an instance of OrderUpdateRequestCustomerInfo from a dict
order_update_request_customer_info_from_dict = OrderUpdateRequestCustomerInfo.from_dict(order_update_request_customer_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


