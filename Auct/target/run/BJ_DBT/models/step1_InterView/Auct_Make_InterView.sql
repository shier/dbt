create view "stg"."Auct_Make_InterView__dbt_tmp" as
    
Select
	[MAKEID] [MakeID],
	cast([DROPDOWNTEXT] as nvarchar(4000)) [DropDownText],
	cast([DISPLAYTEXT] as nvarchar(4000)) [DisplayText],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_Make_Raw]
