{{ config(materialized='view',schema='stg')}}
Select
	[ConsignmentFormID],[ConsignmentID],[FormName],[FormKey],[FilePath],[SignStartedDateTime],[SignfinishedDateTime],[UserID] 
From stg.[Auct_ConsignmentForms_Incr] 
Where [dbt_valid_to] is null