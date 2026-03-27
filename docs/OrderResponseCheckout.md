# OrderResponseCheckout

Checkout resource linked to the order. Present only when the order is linked to a checkout (`channel.checkout_request_id`).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed_payment_methods** | **List[str]** |  | [optional] 
**can_not_expire** | **bool** |  | [optional] 
**emails_sent** | **int** |  | [optional] 
**expires_at** | **int** |  | [optional] 
**failure_url** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**is_redirect_on_failure** | **bool** |  | [optional] 
**livemode** | **bool** |  | [optional] 
**metadata** | **Dict[str, object]** |  | [optional] 
**name** | **str** |  | [optional] 
**needs_shipping_contact** | **bool** |  | [optional] 
**object** | **str** |  | [optional] 
**on_demand_enabled** | **bool** |  | [optional] 
**recurrent** | **bool** |  | [optional] 
**slug** | **str** |  | [optional] 
**sms_sent** | **int** |  | [optional] 
**success_url** | **str** |  | [optional] 
**starts_at** | **int** |  | [optional] 
**status** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**url** | **str** |  | [optional] 

## Example

```python
from digitalfemsa.models.order_response_checkout import OrderResponseCheckout

# TODO update the JSON string below
json = "{}"
# create an instance of OrderResponseCheckout from a JSON string
order_response_checkout_instance = OrderResponseCheckout.from_json(json)
# print the JSON string representation of the object
print(OrderResponseCheckout.to_json())

# convert the object into a dict
order_response_checkout_dict = order_response_checkout_instance.to_dict()
# create an instance of OrderResponseCheckout from a dict
order_response_checkout_from_dict = OrderResponseCheckout.from_dict(order_response_checkout_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


