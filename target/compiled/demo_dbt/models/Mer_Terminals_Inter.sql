
Select
	cast(BuildType as nvarchar(4000)) BuilDType,
	cast(DeviceTypeName as nvarchar(4000)) DeviceTypeName,
	cast(Id as nvarchar(4000)) ID,
	cast(MerchantId as nvarchar(4000)) MerchantID,
	cast(Name as nvarchar(4000)) Name,
	cast(Model as nvarchar(4000)) Model,
	cast(Serial as nvarchar(4000)) Serial,
	cast(SecureId as nvarchar(4000)) SecureID,
	PinDisabled PinDisabled,
	OfflinePayments OffLinePayments,
	OfflinePaymentsAll OffLinePaymentsall,
	CreatedDate CreatedDate,
	UpdatedDate Updateddate,
	RemovedDate RemovedDate
From Mer_Terminals_Raw