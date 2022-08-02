{{ config(materialized='table',schema='dbo')}}
Select
	cast([YearID] as int) [YearID],
	cast([DropDownText] as nvarchar(4000)) [DropDownText],
	cast([DisplayText] as nvarchar(4000)) [DisplayText] 
From stg.[Auct_Year_FinalView]