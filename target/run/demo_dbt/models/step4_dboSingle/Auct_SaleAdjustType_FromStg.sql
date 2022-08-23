
  
  if object_id ('"dbo"."Auct_SaleAdjustType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SaleAdjustType_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SaleAdjustType_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SaleAdjustType_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SaleAdjustType_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SaleAdjustTypeID] as int) [SaleAdjustTypeID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ProcessorName] as nvarchar(4000)) [ProcessorName],
	cast([HtmlDescription] as nvarchar(4000)) [HtmlDescription],
	cast([ClassName] as nvarchar(4000)) [ClassName] 
From stg.[Auct_SaleAdjustType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SaleAdjustType_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SaleAdjustType_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SaleAdjustType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SaleAdjustType_FromStg__dbt_tmp_temp_view"
    end


