# BalanceResponse

Company balance summary.  Monetary fields are returned as arrays of amounts grouped by currency (see `balance_common_field` items). 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | [**List[BalanceCommonField]**](BalanceCommonField.md) | Amounts currently available, grouped by currency. | [optional] 
**cashout_retention_amount** | [**List[BalanceCommonField]**](BalanceCommonField.md) | The balance&#39;s cashout retention amount | [optional] 
**conekta_retention** | [**List[BalanceCommonField]**](BalanceCommonField.md) | The balance&#39;s Femsa retention | [optional] 
**gateway** | [**List[BalanceCommonField]**](BalanceCommonField.md) | Gateway balance amounts, grouped by currency. | [optional] 
**pending** | [**List[BalanceCommonField]**](BalanceCommonField.md) | Amounts pending settlement, grouped by currency. | [optional] 
**retained** | [**List[BalanceCommonField]**](BalanceCommonField.md) | Amounts currently retained, grouped by currency. | [optional] 
**retention_amount** | [**List[BalanceCommonField]**](BalanceCommonField.md) | Retention amount applied, grouped by currency. | [optional] 
**target_collateral_amount** | **object** | Target collateral amount, grouped by currency. | [optional] 
**target_retention_amount** | [**List[BalanceCommonField]**](BalanceCommonField.md) | Target retention amount, grouped by currency. | [optional] 
**temporarily_retained** | [**List[BalanceCommonField]**](BalanceCommonField.md) | Amounts temporarily retained | [optional] 

## Example

```python
from digitalfemsa.models.balance_response import BalanceResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BalanceResponse from a JSON string
balance_response_instance = BalanceResponse.from_json(json)
# print the JSON string representation of the object
print(BalanceResponse.to_json())

# convert the object into a dict
balance_response_dict = balance_response_instance.to_dict()
# create an instance of BalanceResponse from a dict
balance_response_from_dict = BalanceResponse.from_dict(balance_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


