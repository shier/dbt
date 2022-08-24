create view "dbo_stg"."Auct_DocumentationBits_InterView__dbt_tmp" as
    
Select
	[DOCUMENTATIONBITID] [DocumentationBitID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_DocumentationBits_Raw]
