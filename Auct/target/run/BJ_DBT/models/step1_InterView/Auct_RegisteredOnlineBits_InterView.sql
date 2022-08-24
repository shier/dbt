create view "dbo_stg"."Auct_RegisteredOnlineBits_InterView__dbt_tmp" as
    
Select
	[REGISTEREDONLINEBIT] [RegisteredOnlineBit],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_RegisteredOnlineBits_Raw]
