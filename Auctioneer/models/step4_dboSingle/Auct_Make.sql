{{ config(materialized='table',schema='dbo')}}
Select
	cast([MakeID] as int) [MAKEID],
	cast([DropDownText] as nvarchar(4000)) [DROPDOWNTEXT],
	cast([DisplayText] as nvarchar(4000)) [DISPLAYTEXT],
	cast([Active] as nvarchar(4000)) [ACTIVE] 
From stg.[Auct_Make_FinalView]