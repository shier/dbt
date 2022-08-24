create view "stg"."Auct_AcceptionApplicationsBits_InterView__dbt_tmp" as
    
Select
	[ACCEPTIONAPPLICATIONSBIT] [AcceptionApplicationsBit],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_AcceptionApplicationsBits_Raw]
