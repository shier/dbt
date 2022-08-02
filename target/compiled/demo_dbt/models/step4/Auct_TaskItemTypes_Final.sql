
Select
	[TaskItemTypeID],[Actionhtml],[Name],[CreateProcessor],[GetProcessor],[TaskCategoryID],[IsTOpTask],[DisplayOrder] 
From stg.[Auct_TaskItemTypes_Incr] 
Where [dbt_valid_to] is null