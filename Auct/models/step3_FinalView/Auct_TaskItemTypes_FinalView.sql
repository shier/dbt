{{ config(materialized='view',schema='stg')}}
Select
	[TaskItemTypeID],[Name],[TaskCategoryID],[CreateProcessor],[GetProcessor],[Actionhtml],[IsTOpTask],[DisplayOrder] 
From stg.[Auct_TaskItemTypes_Incr] 
Where [dbt_valid_to] is null