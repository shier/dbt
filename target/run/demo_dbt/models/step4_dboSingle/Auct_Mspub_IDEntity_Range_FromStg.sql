
  
  if object_id ('"dbo"."Auct_Mspub_IDEntity_Range_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Mspub_IDEntity_Range_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Mspub_IDEntity_Range_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Mspub_IDEntity_Range_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Mspub_IDEntity_Range_FromStg__dbt_tmp_temp_view as
    
Select
	cast([OBJID] as int) [OBJID],
	cast([ThresHold] as int) [ThresHold],
	cast([Range] as bigint) [Range],
	cast([Pub_Range] as bigint) [Pub_Range],
	cast([Current_Pub_Range] as bigint) [Current_Pub_Range],
	cast([Last_Seed] as bigint) [Last_Seed] 
From stg.[Auct_Mspub_IDEntity_Range_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Mspub_IDEntity_Range_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Mspub_IDEntity_Range_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Mspub_IDEntity_Range_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Mspub_IDEntity_Range_FromStg__dbt_tmp_temp_view"
    end


