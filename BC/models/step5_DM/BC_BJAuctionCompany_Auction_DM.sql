{{ config(materialized='table',schema='dbo')}}
select 
    AuctionID,
    Name + ' - ' + convert(varchar(5), [Year]) as AuctionName,
    convert(date, AuctionBegins) as AuctionBegins,
    convert(date, AuctionEnds) as AuctionEnds,
    Project
from [stg].[Auct_Auction_FinalView]
