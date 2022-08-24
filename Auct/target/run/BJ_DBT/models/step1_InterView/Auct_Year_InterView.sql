create view "dbo_stg"."Auct_Year_InterView__dbt_tmp" as
    
Select
	[YEARID] [YearID],
	cast([DROPDOWNTEXT] as nvarchar(4000)) [DropDownText],
	cast([DISPLAYTEXT] as nvarchar(4000)) [DisplayText]
From stg.[Auct_Year_Raw]
