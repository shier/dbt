{{ config(materialized='view',schema='stg')}}
Select
	[ContentID],[ContentTypeID],[Name],[Active],[DateCreated] 
From stg.[Auct_Content_Incr] 
Where [dbt_valid_to] is null