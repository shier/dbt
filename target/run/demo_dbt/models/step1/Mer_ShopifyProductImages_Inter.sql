
  
  if object_id ('"stg"."Mer_ShopifyProductImages_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProductImages_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_ShopifyProductImages_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_ShopifyProductImages_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_ShopifyProductImages_Inter__dbt_tmp_temp_view as
    
Select
	cast([Id] as nvarchar(4000)) [ID],
	[ImageHeight] [ImageHeight],
	[ImageWidth] [ImageWidth],
	[CreatedDate] [CreatedDate],
	[UpdatedDate] [Updateddate],
	[RemovedDate] [RemovedDate],
	cast([ProductId] as nvarchar(4000)) [ProductID],
	cast([ImageUrl] as nvarchar(4000)) [ImageURL],
	cast([Alt] as nvarchar(4000)) [Alt]
From stg.[Mer_ShopifyProductImages_Raw]
    ');

  CREATE TABLE "stg"."Mer_ShopifyProductImages_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_ShopifyProductImages_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_ShopifyProductImages_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProductImages_Inter__dbt_tmp_temp_view"
    end


