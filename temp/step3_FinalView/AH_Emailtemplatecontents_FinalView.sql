{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Name],[Culture],[SuBJect],[Body],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_Emailtemplatecontents_Incr] 
Where [dbt_valid_to] is null