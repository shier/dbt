{{ config(materialized='view',schema='stg')}}
Select
	[Email],[First_Name],[Last_Name],[Email_Type] 
From stg.[Auct_Tmp_WebSiteEmailList_Incr] 
Where [dbt_valid_to] is null