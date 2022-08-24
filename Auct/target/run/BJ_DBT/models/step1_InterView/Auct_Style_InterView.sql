create view "dbo_stg"."Auct_Style_InterView__dbt_tmp" as
    
Select
	[STYLEID] [StyleID],
	[MODELID] [ModelID],
	cast([DROPDOWNTEXT] as nvarchar(4000)) [DropDownText],
	cast([DISPLAYTEXT] as nvarchar(4000)) [DisplayText],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_Style_Raw]