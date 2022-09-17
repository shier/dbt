
  
  if object_id ('"dbo"."Auct_Mspub_IDEntity_Range__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Mspub_IDEntity_Range__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Mspub_IDEntity_Range__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Mspub_IDEntity_Range__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Mspub_IDEntity_Range__dbt_tmp_temp_view as
    
Select
	cast([OBJID] as int) [objid],
	cast([ThresHold] as int) [threshold],
	cast([Range] as bigint) [range],
	cast([Pub_Range] as bigint) [pub_range],
	cast([Current_Pub_Range] as bigint) [current_pub_range],
	cast([Last_Seed] as bigint) [last_seed] 
From stg.[Auct_Mspub_IDEntity_Range_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Mspub_IDEntity_Range__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Mspub_IDEntity_Range__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Mspub_IDEntity_Range__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Mspub_IDEntity_Range__dbt_tmp_temp_view"
    end


