{{ config(materialized='view',schema='stg')}}
Select
	cast([Id] as nvarchar(4000)) [ID],
	cast([BuildType] as nvarchar(4000)) [BuilDType],
	cast([DeviceTypeName] as nvarchar(4000)) [DeviceTypeName],
	cast([MerchantId] as nvarchar(4000)) [MerchantID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Serial] as nvarchar(4000)) [Serial],
	cast([SecureId] as nvarchar(4000)) [SecureID],
	[CreatedDate] [CreatedDate],
	[UpdatedDate] [Updateddate],
	[RemovedDate] [RemovedDate],
	[PinDisabled] [PinDisabled],
	[OfflinePayments] [OffLinePayments],
	[OfflinePaymentsAll] [OffLinePaymentsall]
From stg.[Mer_Terminals_Raw]
