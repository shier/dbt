{{ config(materialized='view',schema='stg')}}
Select
	[STYLEID] [StyleID],
	[MODELID] [ModelID],
	cast([DROPDOWNTEXT] as nvarchar(4000)) [DropDownText],
	cast([DISPLAYTEXT] as nvarchar(4000)) [DisplayText],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_Style_Raw]
