{{ config(materialized='view',schema='stg')}}
Select
	[MetaDataID],[MetaDataTypeID],[Value],[Active],[DateCreated] 
From stg.[Auct_MetaData_Incr] 
Where [dbt_valid_to] is null