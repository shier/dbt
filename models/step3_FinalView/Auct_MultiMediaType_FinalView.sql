{{ config(materialized='view',schema='stg')}}
Select
	[MultiMediaTypeID],[Name],[Active],[Extension] 
From stg.[Auct_MultiMediaType_Incr] 
Where [dbt_valid_to] is null