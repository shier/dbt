{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctioneerTestID] as int) [AuctioneerTestID],
	cast([PostDate] as nvarchar(4000)) [PostDate],
	cast([PostUser] as nvarchar(4000)) [PostUser],
	cast([Function] as nvarchar(4000)) [Function],
	cast([Operations] as nvarchar(4000)) [Operations],
	cast([Observations] as nvarchar(4000)) [Observations],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([CompletionDate] as nvarchar(4000)) [CompletionDate] 
From stg.[Auct_AuctioneerTest_FinalView]