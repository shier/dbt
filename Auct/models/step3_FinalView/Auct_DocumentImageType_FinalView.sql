{{ config(materialized='view',schema='stg')}}
Select
	[DocumentImageTypeID],[Name],[Active] 
From stg.[Auct_DocumentImageType_Incr] 
Where [dbt_valid_to] is null