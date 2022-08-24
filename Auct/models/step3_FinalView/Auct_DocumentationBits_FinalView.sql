{{ config(materialized='view',schema='stg')}}
Select
	[DocumentationBitID],[Active],[Name] 
From stg.[Auct_DocumentationBits_Incr] 
Where [dbt_valid_to] is null