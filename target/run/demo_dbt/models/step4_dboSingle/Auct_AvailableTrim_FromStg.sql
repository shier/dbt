
  
  if object_id ('"dbo"."Auct_AvailableTrim_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AvailableTrim_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AvailableTrim_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AvailableTrim_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AvailableTrim_FromStg__dbt_tmp_temp_view as
    
Select
	cast([AvailableTrimID] as int) [AvailableTrimID],
	cast([CarTrimID] as int) [CarTrimID],
	cast([CarModelID] as int) [CarModelID],
	cast([AllowDropDown] as nvarchar(4000)) [AllowDropDown],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AvailableTrim_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AvailableTrim_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AvailableTrim_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AvailableTrim_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AvailableTrim_FromStg__dbt_tmp_temp_view"
    end


