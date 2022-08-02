{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[GUID],[DefaultvariationName],[Loader],[Saver],[LastUpdatedUser],[ConText],[Status] 
From stg.[AH_Media_Incr] 
Where [dbt_valid_to] is null