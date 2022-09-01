{{ config(materialized='view',schema='stg')}}
Select
	[ShotID],[ContentID],[FileName],[DateCreated],[Active],[Name],[PathID],[SubPath],[MultiMediaTypeID] 
From stg.[Auct_Shot_Incr] 
Where [dbt_valid_to] is null