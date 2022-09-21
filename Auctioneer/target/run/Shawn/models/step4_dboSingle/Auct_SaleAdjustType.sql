
  
  if object_id ('"dbo"."Auct_SaleAdjustType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SaleAdjustType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SaleAdjustType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SaleAdjustType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SaleAdjustType__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([SaleAdjustTypeID] as int) [SALEADJUSTTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([ProcessorName] as nvarchar(4000)) [PROCESSORNAME],
	cast([HtmlDescription] as nvarchar(4000)) [HTMLDESCRIPTION],
	cast([ClassName] as nvarchar(4000)) [CLASSNAME] 
From stg.[Auct_SaleAdjustType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SaleAdjustType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SaleAdjustType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SaleAdjustType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SaleAdjustType__dbt_tmp_temp_view"
    end


