{{ config(materialized='view',schema='stg')}}
Select
	[ContentTypeID],[Name],[Active] 
From stg.[Auct_ContentType_Incr] 
Where [dbt_valid_to] is null