create view "stg"."CC_ListingTrackRollup_InterView__dbt_tmp" as
    
Select
	[ListingId] [ListingID],
	[Year] [Year],
	[Month] [Month],
	[Day] [Day],
	[Views] [Views],
	[BatchDate] [BatchDate],
	cast([BatchId] as nvarchar(4000)) [BatchID]
From stg.[CC_ListingTrackRollup_Raw]
