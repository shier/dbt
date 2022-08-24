create view "stg"."Auct_BannerType_InterView__dbt_tmp" as
    
Select
	[BANNERTYPEID] [BannerTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_BannerType_Raw]
