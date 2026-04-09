# UpdateCustomer

Request body to update a customer.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Customer&#39;s name. | [optional] 
**email** | **str** | Customer email address. | [optional] 
**phone** | **str** | Customer phone number. | [optional] 
**corporate** | **bool** | True if the customer represents a company. | [optional] 
**custom_reference** | **str** | Merchant-defined reference used to identify the customer in your system. | [optional] 
**metadata** | **Dict[str, object]** | Arbitrary metadata associated with the customer. | [optional] 
**payment_sources** | [**List[CustomerPaymentMethodsRequest]**](CustomerPaymentMethodsRequest.md) | Customer payment sources to create/attach (offline recurrent references). | [optional] 
**default_payment_source_id** | **str** | Sets the default payment source for the customer (must be an existing payment source on the customer). | [optional] 
**default_fiscal_entity_id** | **str** | Sets the default fiscal entity for the customer (must be an existing fiscal entity on the customer). | [optional] 
**default_shipping_contact_id** | **str** | Sets the default shipping contact for the customer (must be an existing shipping contact on the customer). | [optional] 

## Example

```python
from digitalfemsa.models.update_customer import UpdateCustomer

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomer from a JSON string
update_customer_instance = UpdateCustomer.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomer.to_json())

# convert the object into a dict
update_customer_dict = update_customer_instance.to_dict()
# create an instance of UpdateCustomer from a dict
update_customer_from_dict = UpdateCustomer.from_dict(update_customer_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


