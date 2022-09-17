
  
  if object_id ('"dbo"."Auct_AvailableOptions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AvailableOptions__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AvailableOptions__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AvailableOptions__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AvailableOptions__dbt_tmp_temp_view as
    
Select
	cast([AvailableOptionsID] as int) [AVAILABLEOPTIONSID],
	cast([CarOptionID] as int) [CAROPTIONID],
	cast([CarModelID] as int) [CARMODELID],
	cast([AllowDropDown] as nvarchar(4000)) [ALLOWDROPDOWN],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AvailableOptions_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AvailableOptions__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AvailableOptions__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AvailableOptions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AvailableOptions__dbt_tmp_temp_view"
    end


