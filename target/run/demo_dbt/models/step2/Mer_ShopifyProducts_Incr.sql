
      
  
  if object_id ('"stg"."Mer_ShopifyProducts_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProducts_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_ShopifyProducts_Incr"','U') is not null
    begin
    drop table "stg"."Mer_ShopifyProducts_Incr"
    end


   EXEC('create view stg.Mer_ShopifyProducts_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Title, Bodyhtml, Options1Values, Options2Name, Options2Values, Options3Name, Options3Values, Vendor, ProductType, Handle, Tags, Publishedscope, Options1Name, Cast(PublishedDate as varchar), Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_ShopifyProducts_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_ShopifyProducts_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_ShopifyProducts_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_ShopifyProducts_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProducts_Incr_temp_view"
    end



  