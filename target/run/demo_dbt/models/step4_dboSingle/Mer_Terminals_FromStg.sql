
  
  if object_id ('"dbo"."Mer_Terminals_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Terminals_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_Terminals_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_Terminals_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_Terminals_FromStg__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo"."Mer_Terminals_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_Terminals_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_Terminals_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Terminals_FromStg__dbt_tmp_temp_view"
    end


