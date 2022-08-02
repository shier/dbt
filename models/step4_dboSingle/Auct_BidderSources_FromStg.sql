{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderSourceID] as int) [BidderSourceID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([Active] as bit) [Active] 
From stg.[Auct_BidderSources_FinalView]