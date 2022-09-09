{{ config(materialized='view',schema='stg')}}
Select
	[ID],[BuilDType],[DeviceTypeName],[MerchantID],[Name],[Model],[Serial],[SecureID],[CreatedDate],[Updateddate],[RemovedDate],[PinDisabled],[OffLinePayments],[OffLinePaymentsall] 
From stg.[Mer_Terminals_Incr] 
Where [dbt_valid_to] is null