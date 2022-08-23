
  
  if object_id ('"dbo"."Mer_ShopifyProducts_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_ShopifyProducts_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_ShopifyProducts_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_ShopifyProducts_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_ShopifyProducts_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as varchar(64)) [ProductID],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Bodyhtml] as varchar(8000)) [Description],
	cast([Vendor] as varchar(300)) [Vendor],
	cast([Options2Name] as varchar(300)) [Options2Name],
	cast([Options2Values] as varchar(8000)) [Options2Values],
	cast([Options3Name] as varchar(300)) [Options3Name],
	cast([Options3Values] as varchar(8000)) [Options3Values],
	cast([ProductType] as varchar(300)) [ProductType],
	cast([Handle] as varchar(8000)) [Handle(suggesttorenamethecolumn)],
	cast([Tags] as varchar(8000)) [Tags],
	cast([Publishedscope] as varchar(128)) [PublishedScope],
	cast([Options1Name] as varchar(300)) [Options1Name],
	cast([Options1Values] as varchar(8000)) [Options1Values],
	cast([PublishedDate] as datetime) [PublishedDate],
	cast([CreatedDate] as datetime) [Created],
	cast([Updateddate] as datetime) [UpdatedDate],
	cast([RemovedDate] as datetime) [DeletedDate] 
From stg.[Mer_ShopifyProducts_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_ShopifyProducts_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_ShopifyProducts_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_ShopifyProducts_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_ShopifyProducts_FromStg__dbt_tmp_temp_view"
    end


