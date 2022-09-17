
  
  if object_id ('"dbo"."Auct_GBS_Festival__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_GBS_Festival__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_GBS_Festival__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_GBS_Festival__dbt_tmp"
    end


   EXEC('create view dbo.Auct_GBS_Festival__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([FestivalID] as int) [FESTIVALID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Longitude] as nvarchar(4000)) [LONGITUDE],
	cast([Latitude] as nvarchar(4000)) [LATITUDE],
	cast([GBS_FestivalID] as int) [GBS_FESTIVALID] 
From stg.[Auct_GBS_Festival_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_GBS_Festival__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_GBS_Festival__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_GBS_Festival__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_GBS_Festival__dbt_tmp_temp_view"
    end


