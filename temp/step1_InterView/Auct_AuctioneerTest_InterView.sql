{{ config(materialized='view',schema='stg')}}
Select
	[AUCTIONEERTESTID] [AuctioneerTestID],
	cast([POSTDATE] as nvarchar(4000)) [PostDate],
	cast([POSTUSER] as nvarchar(4000)) [PostUser],
	cast([FUNCTION] as nvarchar(4000)) [Function],
	cast([OPERATIONS] as nvarchar(4000)) [Operations],
	cast([OBSERVATIONS] as nvarchar(4000)) [Observations],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	cast([COMPLETIONDATE] as nvarchar(4000)) [CompletionDate]
From stg.[Auct_AuctioneerTest_Raw]
