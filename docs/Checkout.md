# Checkout

Creates a Payment Link. This is a sub-resource related to an Order template: each time a customer pays using the link, the API will create an Order using `order_template`. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Payment link name. | 
**type** | **str** | Checkout type. | 
**recurrent** | **bool** | false: single use. true: multiple payments | 
**payments_limit_count** | **int** | Required when &#x60;recurrent&#x60; is true. Maximum number of payments allowed through the link. | [optional] 
**allowed_payment_methods** | **List[str]** | Payment methods available in the payment link. | 
**needs_shipping_contact** | **bool** | This flag allows you to fill in the shipping information at checkout. | 
**starts_at** | **int** | Start time for the link. Unix timestamp in seconds. | [optional] 
**expires_at** | **int** | Expiration time for the link (Unix timestamp in seconds). Valid range is between 2 and 365 days (calculated from the next day of creation at 00:01).  | 
**can_not_expire** | **bool** | If true, the link does not expire. | [optional] 
**order_template** | [**CheckoutOrderTemplate**](CheckoutOrderTemplate.md) |  | 

## Example

```python
from digitalfemsa.models.checkout import Checkout

# TODO update the JSON string below
json = "{}"
# create an instance of Checkout from a JSON string
checkout_instance = Checkout.from_json(json)
# print the JSON string representation of the object
print(Checkout.to_json())

# convert the object into a dict
checkout_dict = checkout_instance.to_dict()
# create an instance of Checkout from a dict
checkout_from_dict = Checkout.from_dict(checkout_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


