{{ config(materialized='view',schema='stg')}}
Select
	[MultiMediaID],[ContentID],[MultiMediaTypeID],[FileName],[DateCreated],[Active],[MultiMediaCategoryID],[Name],[PathID],[SubPath] 
From stg.[Auct_MultiMedia_Incr] 
Where [dbt_valid_to] is null