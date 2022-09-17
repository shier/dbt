{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctioneerTestID] as int) [AUCTIONEERTESTID],
	cast([PostDate] as nvarchar(4000)) [POSTDATE],
	cast([PostUser] as nvarchar(4000)) [POSTUSER],
	cast([Function] as nvarchar(4000)) [FUNCTION],
	cast([Operations] as nvarchar(4000)) [OPERATIONS],
	cast([Observations] as nvarchar(4000)) [OBSERVATIONS],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([CompletionDate] as nvarchar(4000)) [COMPLETIONDATE] 
From stg.[Auct_AuctioneerTest_FinalView]