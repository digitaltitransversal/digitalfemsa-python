# OrderUpdateRequest

Order update payload. Only supported fields can be modified.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **str** | Currency code in ISO 4217 (3-letter uppercase). | [optional] 
**customer_info** | [**OrderUpdateRequestCustomerInfo**](OrderUpdateRequestCustomerInfo.md) |  | [optional] 
**line_items** | [**List[Product]**](Product.md) | List of [products](https://developers.femsa.com/v2.1.0/reference/orderscreateproduct) that are sold in the order. You must have at least one product. | [optional] 
**charges** | [**List[ChargeRequest]**](ChargeRequest.md) |  | [optional] 
**discount_lines** | [**List[OrderDiscountLinesRequest]**](OrderDiscountLinesRequest.md) | List of [discounts](https://developers.femsa.com/v2.1.0/reference/orderscreatediscountline) that are applied to the order. You must have at least one discount. | [optional] 
**tax_lines** | [**List[OrderTaxRequest]**](OrderTaxRequest.md) |  | [optional] 
**shipping_contact_id** | **str** | Existing shipping contact id from the customer to link to this order. | [optional] 
**shipping_contact** | [**CustomerShippingContacts**](CustomerShippingContacts.md) |  | [optional] 
**shipping_lines** | [**List[ShippingRequest]**](ShippingRequest.md) | List of [shipping costs](https://developers.femsa.com/v2.1.0/reference/orderscreateshipping). If the online store offers digital products. | [optional] 
**fiscal_entity_id** | **str** | Existing fiscal entity id from the customer to link to this order. | [optional] 
**fiscal_entity** | [**OrderUpdateFiscalEntityRequest**](OrderUpdateFiscalEntityRequest.md) |  | [optional] 
**return_url** | **str** | URL where the customer should be redirected after completing a payment flow (if applicable). | [optional] 
**metadata** | **Dict[str, object]** | Arbitrary key-value data that you can attach to the order for your internal use. It is not used for payment processing. Keys should be strings; values can be any JSON value.  | [optional] 
**status** | **str** | Order status update (only allowed transitions will be accepted). | [optional] 

## Example

```python
from digitalfemsa.models.order_update_request import OrderUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of OrderUpdateRequest from a JSON string
order_update_request_instance = OrderUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(OrderUpdateRequest.to_json())

# convert the object into a dict
order_update_request_dict = order_update_request_instance.to_dict()
# create an instance of OrderUpdateRequest from a dict
order_update_request_from_dict = OrderUpdateRequest.from_dict(order_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


