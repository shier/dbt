
  
  if object_id ('"dbo"."Auct_Clip__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Clip__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Clip__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Clip__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Clip__dbt_tmp_temp_view as
    
Select
	cast([ClipID] as int) [CLIPID],
	cast([ClipTypeID] as int) [CLIPTYPEID],
	cast([MultiMediaID] as int) [MULTIMEDIAID],
	cast([Active] as int) [ACTIVE],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Description] as nvarchar(4000)) [DESCRIPTION] 
From stg.[Auct_Clip_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Clip__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Clip__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Clip__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Clip__dbt_tmp_temp_view"
    end


