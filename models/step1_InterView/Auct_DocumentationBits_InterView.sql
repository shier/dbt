{{ config(materialized='view',schema='stg')}}
Select
	[DOCUMENTATIONBITID] [DocumentationBitID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_DocumentationBits_Raw]
