create view "dbo_stg"."Auct_ClipType_InterView__dbt_tmp" as
    
Select
	[CLIPTYPEID] [ClipTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_ClipType_Raw]
