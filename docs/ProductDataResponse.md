# ProductDataResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The name of the item. It will be displayed in the order. | 
**unit_price** | **int** | The price of the item in cents. | 
**quantity** | **int** | The quantity of the item in the order. | 
**sku** | **str** | The stock keeping unit for the item. It is used to identify the item in the order. | [optional] 
**brand** | **str** | The brand of the item. | [optional] 
**description** | **str** | Short description of the item | [optional] 
**tags** | **List[str]** | List of tags for the item. It is used to identify the item in the order. | [optional] 
**metadata** | **Dict[str, object]** | Arbitrary key-value data for your internal use. Keys should be strings; values can be any JSON value.  | [optional] 
**id** | **str** |  | [optional] 
**object** | **str** |  | [optional] 
**parent_id** | **str** |  | [optional] 

## Example

```python
from digitalfemsa.models.product_data_response import ProductDataResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProductDataResponse from a JSON string
product_data_response_instance = ProductDataResponse.from_json(json)
# print the JSON string representation of the object
print(ProductDataResponse.to_json())

# convert the object into a dict
product_data_response_dict = product_data_response_instance.to_dict()
# create an instance of ProductDataResponse from a dict
product_data_response_from_dict = ProductDataResponse.from_dict(product_data_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


