
  
  if object_id ('"dbo"."CC_SavedSearchesAudit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SavedSearchesAudit__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SavedSearchesAudit__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SavedSearchesAudit__dbt_tmp"
    end


   EXEC('create view dbo.CC_SavedSearchesAudit__dbt_tmp_temp_view as
    
Select
	cast([State] as nvarchar(4000)) [State],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	cast([SearchDescription] as nvarchar(4000)) [SearchDescription],
	cast([Dml_Operation] as nvarchar(4000)) [DML_Operation],
	cast([SavedSearchName] as nvarchar(4000)) [SavedSearchName],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Country] as nvarchar(4000)) [Country],
	cast([PriceFrom] as numeric(19,4)) [PriceFrom],
	cast([Priceto] as numeric(19,4)) [PriceTo],
	cast([IsActive] as bit) [IsActive],
	cast([IncludePrivate] as bit) [IncludePrivate],
	cast([IncludeDealer] as bit) [IncludeDealer],
	cast([IncludeAuction] as bit) [IncludeAuction],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([YearFrom] as int) [YearFrom],
	cast([Yearto] as int) [YearTo],
	cast([Distance] as int) [Distance],
	cast([VehicleTypeID] as int) [VehicleTypeId],
	cast([AlertModeID] as int) [AlertModeId],
	cast([AlertFrequencyID] as int) [AlertFrequencyId],
	cast([SavedSearchAuditPK] as int) [SavedSearchAuditPK],
	cast([AuditentryDateUTC] as datetime) [AuditEntryDateUTC],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_SavedSearchesAudit_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SavedSearchesAudit__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SavedSearchesAudit__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SavedSearchesAudit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SavedSearchesAudit__dbt_tmp_temp_view"
    end


