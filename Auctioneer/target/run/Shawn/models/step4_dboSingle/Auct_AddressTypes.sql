
  
  if object_id ('"dbo"."Auct_AddressTypes__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AddressTypes__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AddressTypes__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AddressTypes__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AddressTypes__dbt_tmp_temp_view as
    
Select
	cast([AddressTypeID] as int) [ADDRESSTYPEID],
	cast([Name] as varchar(64)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Icon] as nvarchar(256)) [ICON],
	cast([ProcessorName] as nvarchar(1024)) [PROCESSORNAME],
	cast([Level] as int) [LEVEL] 
From stg.[Auct_AddressTypes_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AddressTypes__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AddressTypes__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AddressTypes__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AddressTypes__dbt_tmp_temp_view"
    end


