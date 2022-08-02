{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Option2],[Option3],[Barcode],[WEightUnit],[InventoryItemID],[ProductID],[Title],[SKU],[FulfillmentService],[Option1],[CreatedDate],[Updateddate],[RemovedDate],[Position],[Taxable],[RequiresShipping],[Price],[CompAreatPrice],[Grams],[Inventoryqty],[WEight],[DelayedsellOnlineqty],[OldInventoryqty] 
From stg.[Mer_ShopifyProductVariants_Incr] 
Where [dbt_valid_to] is null