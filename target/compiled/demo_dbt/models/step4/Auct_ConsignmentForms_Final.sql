
Select
	[ConsignmentFormID],[FormName],[FormKey],[FilePath],[ConsignmentID],[UserID],[SignStartedDateTime],[SignfinishedDateTime] 
From stg.[Auct_ConsignmentForms_Incr] 
Where [dbt_valid_to] is null