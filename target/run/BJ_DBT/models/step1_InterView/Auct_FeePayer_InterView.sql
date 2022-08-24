create view "stg"."Auct_FeePayer_InterView__dbt_tmp" as
    
Select
	[FEEPAYERID] [FeePayerID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_FeePayer_Raw]
