# UpdateOrderTaxRequest

Create a new tax line for an existing order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **int** | The amount to be collected for tax in cents | [optional] 
**description** | **str** | Description or tax name | [optional] 
**metadata** | **Dict[str, object]** |  | [optional] 

## Example

```python
from digitalfemsa.models.update_order_tax_request import UpdateOrderTaxRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateOrderTaxRequest from a JSON string
update_order_tax_request_instance = UpdateOrderTaxRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateOrderTaxRequest.to_json())

# convert the object into a dict
update_order_tax_request_dict = update_order_tax_request_instance.to_dict()
# create an instance of UpdateOrderTaxRequest from a dict
update_order_tax_request_from_dict = UpdateOrderTaxRequest.from_dict(update_order_tax_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


