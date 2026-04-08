# OrderRequest

a order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **str** | Currency with which the payment will be made. | 
**customer_info** | [**OrderRequestCustomerInfo**](OrderRequestCustomerInfo.md) |  | 
**line_items** | [**List[Product]**](Product.md) | List of [products](https://developers.digitalfemsa.io/reference/orderscreateproduct) that are sold in the order. You must have at least one product. | 
**charges** | [**List[ChargeRequest]**](ChargeRequest.md) | List of [charges](https://developers.digitalfemsa.io/reference/orderscreatecharge) that are applied to the order | [optional] 
**checkout** | [**CheckoutRequest**](CheckoutRequest.md) |  | [optional] 
**discount_lines** | [**List[OrderDiscountLinesRequest]**](OrderDiscountLinesRequest.md) | List of [discounts](https://developers.digitalfemsa.io/reference/orderscreatediscountline) that are applied to the order. You must have at least one discount. | [optional] 
**tax_lines** | [**List[OrderTaxRequest]**](OrderTaxRequest.md) | List of [taxes](https://developers.digitalfemsa.io/reference/orderscreatetaxes) that are applied to the order. | [optional] 
**needs_shipping_contact** | **bool** | Allows you to fill out the shipping information at checkout | [optional] 
**shipping_contact** | [**CustomerShippingContacts**](CustomerShippingContacts.md) |  | [optional] 
**shipping_lines** | [**List[ShippingRequest]**](ShippingRequest.md) | List of [shipping costs](https://developers.digitalfemsa.io/reference/orderscreateshipping). If the online store offers digital products. | [optional] 
**fiscal_entity** | [**OrderFiscalEntityRequest**](OrderFiscalEntityRequest.md) |  | [optional] 
**processing_mode** | **str** | Indicates the processing mode for the order, either ecommerce, recurrent or validation. | [optional] 
**metadata** | **Dict[str, object]** | Arbitrary key-value data that you can attach to the order for your internal use (e.g. &#x60;customer_segment&#x60;, &#x60;sales_channel&#x60;, &#x60;internal_order_id&#x60;). It is not used for payment processing or fraud decisions. Keys should be strings; values can be any JSON value. | [optional] 

## Example

```python
from digitalfemsa.models.order_request import OrderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of OrderRequest from a JSON string
order_request_instance = OrderRequest.from_json(json)
# print the JSON string representation of the object
print(OrderRequest.to_json())

# convert the object into a dict
order_request_dict = order_request_instance.to_dict()
# create an instance of OrderRequest from a dict
order_request_from_dict = OrderRequest.from_dict(order_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


