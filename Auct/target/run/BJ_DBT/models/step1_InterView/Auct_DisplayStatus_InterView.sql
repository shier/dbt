create view "dbo_stg"."Auct_DisplayStatus_InterView__dbt_tmp" as
    
Select
	[DISPLAYSTATUSID] [DisplayStatusID],
	cast([Name] as nvarchar(4000)) [Name]
From stg.[Auct_DisplayStatus_Raw]
