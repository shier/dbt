{{ config(materialized='view',schema='stg')}}
Select
	[ContentID],[MetaDataID] 
From [Auct_ContentMetaData_Incr]