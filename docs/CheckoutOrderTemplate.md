# CheckoutOrderTemplate

Attributes used to create the order when a new payment is received.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **str** | ISO 4217 currency code for the order. | 
**customer_info** | [**CheckoutOrderTemplateCustomerInfo**](CheckoutOrderTemplateCustomerInfo.md) |  | [optional] 
**line_items** | [**List[Product]**](Product.md) | Products to buy. Each contains unit price and quantity used to calculate the order total. | 
**metadata** | **Dict[str, object]** | Arbitrary key-value data attached to the order for internal use. | [optional] 

## Example

```python
from digitalfemsa.models.checkout_order_template import CheckoutOrderTemplate

# TODO update the JSON string below
json = "{}"
# create an instance of CheckoutOrderTemplate from a JSON string
checkout_order_template_instance = CheckoutOrderTemplate.from_json(json)
# print the JSON string representation of the object
print(CheckoutOrderTemplate.to_json())

# convert the object into a dict
checkout_order_template_dict = checkout_order_template_instance.to_dict()
# create an instance of CheckoutOrderTemplate from a dict
checkout_order_template_from_dict = CheckoutOrderTemplate.from_dict(checkout_order_template_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


