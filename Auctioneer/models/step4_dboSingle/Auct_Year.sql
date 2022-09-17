{{ config(materialized='table',schema='dbo')}}
Select
	cast([YearID] as int) [YEARID],
	cast([DropDownText] as nvarchar(4000)) [DROPDOWNTEXT],
	cast([DisplayText] as nvarchar(4000)) [DISPLAYTEXT] 
From stg.[Auct_Year_FinalView]