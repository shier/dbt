{{ config(materialized='view',schema='stg')}}
Select
	[YEARID] [YearID],
	cast([DROPDOWNTEXT] as nvarchar(4000)) [DropDownText],
	cast([DISPLAYTEXT] as nvarchar(4000)) [DisplayText]
From stg.[Auct_Year_Raw]
