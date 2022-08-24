create view "stg"."Auct_KeyControlStatus_InterView__dbt_tmp" as
    
Select
	[KEYCONTROLSTATUSID] [KeyControlStatusID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_KeyControlStatus_Raw]
