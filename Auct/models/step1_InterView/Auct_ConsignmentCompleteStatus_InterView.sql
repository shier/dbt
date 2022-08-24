{{ config(materialized='view',schema='stg')}}
Select
	[CONSIGNMENTCOMPLETESTATUSID] [ConsignmentCompleteStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[DISPLAYORDER] [DisplayOrder],
	[ACTIVE] [Active]
From stg.[Auct_ConsignmentCompleteStatus_Raw]
