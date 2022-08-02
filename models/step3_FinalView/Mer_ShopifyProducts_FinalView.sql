{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Title],[Bodyhtml],[Vendor],[Options2Name],[Options2Values],[Options3Name],[Options3Values],[ProductType],[Handle],[Tags],[Publishedscope],[Options1Name],[Options1Values],[PublishedDate],[CreatedDate],[Updateddate],[RemovedDate] 
From stg.[Mer_ShopifyProducts_Incr] 
Where [dbt_valid_to] is null