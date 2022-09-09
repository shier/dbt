{{ config(materialized='view',schema='stg')}}
Select
	[ContentID],[MetaDataID] 
From [Auct_ContentMetaData_Incr] 
Where [dbt_valid_to] is null