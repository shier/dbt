create view "dbo_stg"."Auct_MediaAudienceType_InterView__dbt_tmp" as
    
Select
	[AUDIENCETYPEID] [AudienceTypeID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_MediaAudienceType_Raw]
