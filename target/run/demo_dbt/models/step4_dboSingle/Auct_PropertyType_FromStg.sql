
  
  if object_id ('"dbo"."Auct_PropertyType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PropertyType_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PropertyType_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PropertyType_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PropertyType_FromStg__dbt_tmp_temp_view as
    
Select
	cast([PropertyTypeID] as int) [PropertyTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Key] as int) [Key],
	cast([Active] as int) [Active] 
From stg.[Auct_PropertyType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PropertyType_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PropertyType_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PropertyType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PropertyType_FromStg__dbt_tmp_temp_view"
    end


