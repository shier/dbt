
  
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
	cast([NexusID] as int) [NexusID],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([County] as nvarchar(4000)) [County],
	cast([Created] as datetime) [Created],
	cast([OnlineBusinessUnitID] as int) [OnLineBusinessUnitID],
	cast([Active] as bit) [Active] 
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


