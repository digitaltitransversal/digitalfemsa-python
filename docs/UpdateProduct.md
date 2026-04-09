# UpdateProduct


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**unit_price** | **int** |  | [optional] 
**quantity** | **int** |  | [optional] 
**sku** | **str** |  | [optional] 
**brand** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**tags** | **List[str]** |  | [optional] 
**metadata** | **Dict[str, object]** |  | [optional] 

## Example

```python
from digitalfemsa.models.update_product import UpdateProduct

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateProduct from a JSON string
update_product_instance = UpdateProduct.from_json(json)
# print the JSON string representation of the object
print(UpdateProduct.to_json())

# convert the object into a dict
update_product_dict = update_product_instance.to_dict()
# create an instance of UpdateProduct from a dict
update_product_from_dict = UpdateProduct.from_dict(update_product_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


