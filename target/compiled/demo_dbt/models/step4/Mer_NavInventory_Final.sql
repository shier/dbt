
Select
	[SKU],[CreatedDate],[Updateddate],[RemovedDate],[IsTest],[Price],[Inventory] 
From stg.[Mer_NavInventory_Incr] 
Where [dbt_valid_to] is null