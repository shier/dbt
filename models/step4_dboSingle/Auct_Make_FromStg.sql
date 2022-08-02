{{ config(materialized='table',schema='dbo')}}
Select
	cast([MakeID] as int) [MakeID],
	cast([DropDownText] as nvarchar(4000)) [DropDownText],
	cast([DisplayText] as nvarchar(4000)) [DisplayText],
	cast([Active] as nvarchar(4000)) [Active] 
From stg.[Auct_Make_FinalView]