# OrderResponse

Order model. Some nested resources are returned as list previews (for example: `charges`, `line_items`), and may be `null` depending on the request/context. The `checkout` field is only present when the order is linked to a checkout (`channel.checkout_request_id`). 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**object** | **str** |  | [optional] 
**livemode** | **bool** |  | [optional] 
**amount** | **int** |  | [optional] 
**currency** | **str** |  | [optional] 
**payment_status** | **str** | Current payment status of the order. It can be &#x60;null&#x60; for orders without payment information yet. | [optional] 
**amount_refunded** | **int** |  | [optional] 
**split_payment** | **bool** | Indicates whether the order uses split payments (when available/configured). | [optional] 
**metadata** | **Dict[str, object]** | Metadata attached to the order. | [optional] 
**is_refundable** | **bool** | Indicates whether the order is currently refundable. | [optional] 
**created_at** | **int** |  | [optional] 
**updated_at** | **int** |  | [optional] 
**customer_info** | [**OrderResponseCustomerInfo**](OrderResponseCustomerInfo.md) |  | [optional] 
**shipping_contact** | [**OrderResponseShippingContact**](OrderResponseShippingContact.md) |  | [optional] 
**channel** | [**OrderResponseChannel**](OrderResponseChannel.md) |  | [optional] 
**fiscal_entity** | [**OrderFiscalEntityResponse**](OrderFiscalEntityResponse.md) |  | [optional] 
**checkout** | [**OrderResponseCheckout**](OrderResponseCheckout.md) |  | [optional] 
**line_items** | [**OrderResponseProducts**](OrderResponseProducts.md) |  | [optional] 
**discount_lines** | [**OrderResponseDiscountLines**](OrderResponseDiscountLines.md) |  | [optional] 
**charges** | [**OrderResponseCharges**](OrderResponseCharges.md) |  | [optional] 
**partial_reference** | **Dict[str, object]** | Partial reference information (when applicable). Structure may vary depending on the payment flow. | [optional] 
**payments_info** | **Dict[str, object]** | Additional payment information (when available). Structure may vary. | [optional] 

## Example

```python
from digitalfemsa.models.order_response import OrderResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrderResponse from a JSON string
order_response_instance = OrderResponse.from_json(json)
# print the JSON string representation of the object
print(OrderResponse.to_json())

# convert the object into a dict
order_response_dict = order_response_instance.to_dict()
# create an instance of OrderResponse from a dict
order_response_from_dict = OrderResponse.from_dict(order_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


