create view "stg"."Mer_ShopifyProductImages_FinalView__dbt_tmp" as
    
Select
	[ID],[ImageHeight],[ImageWidth],[CreatedDate],[Updateddate],[RemovedDate],[ProductID],[ImageURL],[Alt] 
From stg.[Mer_ShopifyProductImages_Incr] 
Where [dbt_valid_to] is null
