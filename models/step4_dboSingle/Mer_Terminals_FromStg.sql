{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as varchar(100)) [ID],
	cast([BuilDType] as varchar(300)) [BuildType],
	cast([DeviceTypeName] as varchar(500)) [DeviceTypeName],
	cast([MerchantID] as varchar(100)) [MerchantID],
	cast([Name] as varchar(500)) [Name],
	cast([Model] as varchar(8000)) [Model],
	cast([Serial] as varchar(100)) [Serial],
	cast([SecureID] as varchar(100)) [SecureID],
	cast([CreatedDate] as datetime) [Created],
	cast([Updateddate] as datetime) [UpdatedDate],
	cast([RemovedDate] as datetime) [DeletedDate],
	cast([PinDisabled] as int) [PinDisabled],
	cast([OffLinePayments] as int) [OfflinePayments],
	cast([OffLinePaymentsall] as int) [OfflinePaymentsAll] 
From stg.[Mer_Terminals_FinalView]