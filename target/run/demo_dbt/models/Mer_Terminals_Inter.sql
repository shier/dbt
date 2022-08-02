
  
  if object_id ('"stg"."Mer_Terminals_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Terminals_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Terminals_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Terminals_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_Terminals_Inter__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "stg"."Mer_Terminals_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Terminals_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Terminals_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Terminals_Inter__dbt_tmp_temp_view"
    end


