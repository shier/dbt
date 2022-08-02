{{ config(materialized='view',schema='stg')}}
Select
	[ACCEPTIONAPPLICATIONSBIT] [AcceptionApplicationsBit],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_AcceptionApplicationsBits_Raw]
