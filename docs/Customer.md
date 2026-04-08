# Customer

Customer create request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Customer&#39;s name. | 
**email** | **str** | Customer email address. | 
**phone** | **str** | Customer phone number. | [optional] 
**corporate** | **bool** | Indicates whether the customer email is corporate. | [optional] [default to False]
**custom_reference** | **str** | Merchant-defined reference used to identify the customer in your system. | [optional] 
**metadata** | **Dict[str, object]** | Arbitrary metadata associated with the customer. | [optional] 
**payment_sources** | [**List[CustomerPaymentMethodsRequest]**](CustomerPaymentMethodsRequest.md) | Customer payment sources to be created with the customer (optional). | [optional] 
**fiscal_entities** | [**List[CustomerFiscalEntitiesRequest]**](CustomerFiscalEntitiesRequest.md) | Customer fiscal entities to be created with the customer (optional). | [optional] 
**shipping_contacts** | [**List[CustomerShippingContacts]**](CustomerShippingContacts.md) | Customer shipping contacts to be created with the customer (optional). | [optional] 

## Example

```python
from digitalfemsa.models.customer import Customer

# TODO update the JSON string below
json = "{}"
# create an instance of Customer from a JSON string
customer_instance = Customer.from_json(json)
# print the JSON string representation of the object
print(Customer.to_json())

# convert the object into a dict
customer_dict = customer_instance.to_dict()
# create an instance of Customer from a dict
customer_from_dict = Customer.from_dict(customer_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


