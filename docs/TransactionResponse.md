# TransactionResponse

Transaction object.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier of the transaction. | 
**object** | **str** | Object name, which is transaction. | 
**amount** | **int** | The amount of the transaction. | 
**fee** | **int** | The amount to be deducted for taxes and commissions. | 
**net** | **int** | The net amount after deducting commissions and taxes. | 
**currency** | **str** | The currency of the transaction. It uses the 3-letter code of ISO 4217. | 
**status** | **str** | Code indicating transaction status. | 
**type** | **str** | Transaction type. | 
**created_at** | **int** | Date and time of creation of the transaction in Unix format. | 
**livemode** | **bool** | Indicates whether the transaction was created in live mode or test mode. | 
**charge** | **str** | Charge ID associated with the transaction (present only if the transaction belongs to a charge). | [optional] 
**transfer** | **str** | Transfer ID associated with the transaction (present only if the transaction belongs to a transfer). | [optional] 
**transferred_at** | **int** | Date and time when the transaction was transferred, in Unix format. | [optional] 
**formula** | **str** | Transaction fee formula identifier (if available). | [optional] 

## Example

```python
from digitalfemsa.models.transaction_response import TransactionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionResponse from a JSON string
transaction_response_instance = TransactionResponse.from_json(json)
# print the JSON string representation of the object
print(TransactionResponse.to_json())

# convert the object into a dict
transaction_response_dict = transaction_response_instance.to_dict()
# create an instance of TransactionResponse from a dict
transaction_response_from_dict = TransactionResponse.from_dict(transaction_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


