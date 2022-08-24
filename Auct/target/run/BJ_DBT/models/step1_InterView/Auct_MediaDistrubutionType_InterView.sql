create view "dbo_stg"."Auct_MediaDistrubutionType_InterView__dbt_tmp" as
    
Select
	[DISTRIBUTIONTYPEID] [DistributionTypeID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_MediaDistrubutionType_Raw]
