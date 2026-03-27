# OrderRefundRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **int** | Amount to refund. If not provided, the API refunds the refundable amount of the selected charge. | 
**charge_id** | **str** | Charge ID to refund. If not provided, the API selects a refundable charge from the order. | [optional] 
**reason** | **str** | Refund reason. If not provided, the API uses a default reason. | 
**expires_at** | **int** | Expiration timestamp for cash refunds (must be within the allowed range configured by the API). | [optional] 

## Example

```python
from digitalfemsa.models.order_refund_request import OrderRefundRequest

# TODO update the JSON string below
json = "{}"
# create an instance of OrderRefundRequest from a JSON string
order_refund_request_instance = OrderRefundRequest.from_json(json)
# print the JSON string representation of the object
print(OrderRefundRequest.to_json())

# convert the object into a dict
order_refund_request_dict = order_refund_request_instance.to_dict()
# create an instance of OrderRefundRequest from a dict
order_refund_request_from_dict = OrderRefundRequest.from_dict(order_refund_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


