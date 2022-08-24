{{ config(materialized='view',schema='stg')}}
Select
	[REGISTEREDONLINEBIT] [RegisteredOnlineBit],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_RegisteredOnlineBits_Raw]
