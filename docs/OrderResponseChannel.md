# OrderResponseChannel

Channel information for the order (for example Checkout-related metadata). It may be `null`.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**segment** | **str** |  | [optional] 
**checkout_request_id** | **str** |  | [optional] 
**checkout_request_type** | **str** |  | [optional] 
**id** | **str** |  | [optional] 

## Example

```python
from digitalfemsa.models.order_response_channel import OrderResponseChannel

# TODO update the JSON string below
json = "{}"
# create an instance of OrderResponseChannel from a JSON string
order_response_channel_instance = OrderResponseChannel.from_json(json)
# print the JSON string representation of the object
print(OrderResponseChannel.to_json())

# convert the object into a dict
order_response_channel_dict = order_response_channel_instance.to_dict()
# create an instance of OrderResponseChannel from a dict
order_response_channel_from_dict = OrderResponseChannel.from_dict(order_response_channel_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


