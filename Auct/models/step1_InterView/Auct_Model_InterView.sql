{{ config(materialized='view',schema='stg')}}
Select
	[MODELID] [ModelID],
	cast([DROPDOWNTEXT] as nvarchar(4000)) [DropDownText],
	cast([DISPLAYTEXT] as nvarchar(4000)) [DisplayText],
	[MAKEID] [MakeID],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_Model_Raw]
