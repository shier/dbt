{{ config(materialized='view',schema='stg')}}
Select
	[Lead_Category_ID],[CarTypeID],[UsersID],[Create_Date] 
From stg.[Auct_Lead_Categories_Incr] 
Where [dbt_valid_to] is null