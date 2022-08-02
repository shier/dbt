{{ config(materialized='table',schema='dbo')}}
Select
	cast([StyleID] as int) [StyleID],
	cast([ModelID] as int) [ModelID],
	cast([DropDownText] as nvarchar(4000)) [DropDownText],
	cast([DisplayText] as nvarchar(4000)) [DisplayText],
	cast([Active] as nvarchar(4000)) [Active] 
From stg.[Auct_Style_FinalView]