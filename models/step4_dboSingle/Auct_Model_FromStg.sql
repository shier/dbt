{{ config(materialized='table',schema='dbo')}}
Select
	cast([ModelID] as int) [ModelID],
	cast([DropDownText] as nvarchar(4000)) [DropDownText],
	cast([DisplayText] as nvarchar(4000)) [DisplayText],
	cast([MakeID] as int) [MakeID],
	cast([Active] as nvarchar(4000)) [Active] 
From stg.[Auct_Model_FinalView]