{{ config(materialized='view',schema='stg')}}
Select
	[GLInfoID],[AccountID],[Name],[Task_ItemType],[Created],[GlCategoryID],[FeeTypeID],[Dept],[Tasks],[Category],[Deptxx] 
From stg.[Auct_GLInfo_Incr] 
Where [dbt_valid_to] is null