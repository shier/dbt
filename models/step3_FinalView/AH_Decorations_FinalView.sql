{{ config(materialized='view',schema='stg')}}
Select
	[ID],[PayToproceed],[CreatedOn],[UpdatedOn],[DeletedOn],[ValIDFields],[Description],[LastUpdatedUser],[Name],[FormatString],[Amount] 
From stg.[AH_Decorations_Incr] 
Where [dbt_valid_to] is null