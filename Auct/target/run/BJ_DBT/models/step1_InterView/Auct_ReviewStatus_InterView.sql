create view "dbo_stg"."Auct_ReviewStatus_InterView__dbt_tmp" as
    
Select
	[REVIEWSTATUSID] [ReviewStatusID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_ReviewStatus_Raw]