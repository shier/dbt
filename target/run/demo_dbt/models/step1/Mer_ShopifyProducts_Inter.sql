
  
  if object_id ('"stg"."Mer_ShopifyProducts_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProducts_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_ShopifyProducts_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_ShopifyProducts_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_ShopifyProducts_Inter__dbt_tmp_temp_view as
    
Select
	cast([Id] as nvarchar(4000)) [ID],
	cast([Title] as nvarchar(4000)) [Title],
	cast([BodyHtml] as nvarchar(4000)) [Bodyhtml],
	cast([Vendor] as nvarchar(4000)) [Vendor],
	cast([Options2Name] as nvarchar(4000)) [Options2Name],
	cast([Options2Values] as nvarchar(4000)) [Options2Values],
	cast([Options3Name] as nvarchar(4000)) [Options3Name],
	cast([Options3Values] as nvarchar(4000)) [Options3Values],
	cast([ProductType] as nvarchar(4000)) [ProductType],
	cast([Handle] as nvarchar(4000)) [Handle],
	cast([Tags] as nvarchar(4000)) [Tags],
	cast([PublishedScope] as nvarchar(4000)) [Publishedscope],
	cast([Options1Name] as nvarchar(4000)) [Options1Name],
	cast([Options1Values] as nvarchar(4000)) [Options1Values],
	[PublishedDate] [PublishedDate],
	[CreatedDate] [CreatedDate],
	[UpdatedDate] [Updateddate],
	[RemovedDate] [RemovedDate]
From stg.[Mer_ShopifyProducts_Raw]
    ');

  CREATE TABLE "stg"."Mer_ShopifyProducts_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_ShopifyProducts_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_ShopifyProducts_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProducts_Inter__dbt_tmp_temp_view"
    end


