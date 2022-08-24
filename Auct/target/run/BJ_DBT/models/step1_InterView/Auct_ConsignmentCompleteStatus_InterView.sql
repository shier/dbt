create view "stg"."Auct_ConsignmentCompleteStatus_InterView__dbt_tmp" as
    
Select
	[CONSIGNMENTCOMPLETESTATUSID] [ConsignmentCompleteStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[DISPLAYORDER] [DisplayOrder],
	[ACTIVE] [Active]
From stg.[Auct_ConsignmentCompleteStatus_Raw]
