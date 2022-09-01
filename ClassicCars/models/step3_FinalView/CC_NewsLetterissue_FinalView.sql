{{ config(materialized='view',schema='stg')}}
Select
	[NewsLetterissuePK],[CreateDateUTC],[ModifyDateUTC],[IssueDateUTC],[IsActive] 
From stg.[CC_NewsLetterissue_Incr] 
Where [dbt_valid_to] is null