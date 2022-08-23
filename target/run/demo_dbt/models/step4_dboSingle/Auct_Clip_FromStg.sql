
  
  if object_id ('"dbo"."Auct_Clip_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Clip_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Clip_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Clip_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Clip_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ClipID] as int) [ClipID],
	cast([ClipTypeID] as int) [ClipTypeID],
	cast([MultiMediaID] as int) [MultiMediaID],
	cast([Active] as int) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_Clip_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Clip_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Clip_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Clip_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Clip_FromStg__dbt_tmp_temp_view"
    end


