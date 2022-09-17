
  
  if object_id ('"dbo"."Auct_SpaceSize__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SpaceSize__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SpaceSize__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SpaceSize__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SpaceSize__dbt_tmp_temp_view as
    
Select
	cast([SpaceSizeID] as int) [SPACESIZEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SpaceSize_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SpaceSize__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SpaceSize__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SpaceSize__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SpaceSize__dbt_tmp_temp_view"
    end


