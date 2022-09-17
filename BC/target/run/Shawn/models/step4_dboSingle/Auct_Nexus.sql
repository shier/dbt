
  
  if object_id ('"dbo"."Auct_Nexus__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Nexus__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Nexus__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Nexus__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Nexus__dbt_tmp_temp_view as
    
Select
	cast([NexusID] as int) [NEXUSID],
	cast([City] as nvarchar(4000)) [CITY],
	cast([State] as nvarchar(4000)) [STATE],
	cast([County] as nvarchar(4000)) [COUNTY],
	cast([Created] as datetime) [CREATED],
	cast([OnlineBusinessUnitID] as int) [ONLINEBUSINESSUNITID],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_Nexus_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Nexus__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Nexus__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Nexus__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Nexus__dbt_tmp_temp_view"
    end


