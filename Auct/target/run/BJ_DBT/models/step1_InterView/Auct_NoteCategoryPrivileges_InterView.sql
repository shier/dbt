create view "dbo_stg"."Auct_NoteCategoryPrivileges_InterView__dbt_tmp" as
    
Select
	[NOTECATEGORYID] [NoteCategoryID],
	[PRIVILEGEID] [PrivilegeID]
From stg.[Auct_NoteCategoryPrivileges_Raw]
