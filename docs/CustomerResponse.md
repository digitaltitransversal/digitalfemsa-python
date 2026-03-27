# CustomerResponse

customer response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Customer&#39;s ID | 
**object** | **str** |  | 
**created_at** | **int** | Creation date of the object (Unix timestamp) | 
**livemode** | **bool** | true if the object exists in live mode or false if the object exists in test mode | 
**name** | **str** | Customer&#39;s name | [optional] 
**email** | **str** |  | [optional] 
**phone** | **str** | Customer&#39;s phone number | [optional] 
**corporate** | **bool** | true if the customer is a company | [optional] 
**custom_reference** | **str** | Custom reference | [optional] 
**default_fiscal_entity_id** | **str** |  | [optional] 
**default_shipping_contact_id** | **str** |  | [optional] 
**metadata** | **Dict[str, object]** | Customer metadata (maps to contextual_data in backend) | [optional] 
**payment_sources** | [**CustomerPaymentMethodsResponse**](CustomerPaymentMethodsResponse.md) |  | [optional] 
**fiscal_entities** | [**CustomerFiscalEntitiesResponse**](CustomerFiscalEntitiesResponse.md) |  | [optional] 
**shipping_contacts** | [**CustomerResponseShippingContacts**](CustomerResponseShippingContacts.md) |  | [optional] 

## Example

```python
from digitalfemsa.models.customer_response import CustomerResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerResponse from a JSON string
customer_response_instance = CustomerResponse.from_json(json)
# print the JSON string representation of the object
print(CustomerResponse.to_json())

# convert the object into a dict
customer_response_dict = customer_response_instance.to_dict()
# create an instance of CustomerResponse from a dict
customer_response_from_dict = CustomerResponse.from_dict(customer_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


