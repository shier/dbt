
  
  if object_id ('"dbo"."Auct_CarModel_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarModel_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarModel_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarModel_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarModel_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CarModelID] as int) [CarModelID],
	cast([Active] as bit) [IsActive],
	cast([WebActive] as bit) [WebActive],
	cast([Name] as nvarchar(1000)) [CarModel],
	cast([CarTypeID] as int) [CarTypeID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([RowGUID] as nvarchar(512)) [RowGUID] 
From stg.[Auct_CarModel_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarModel_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarModel_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarModel_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarModel_FromStg__dbt_tmp_temp_view"
    end


