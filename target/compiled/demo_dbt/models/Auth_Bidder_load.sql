select *,HASHBYTES('MD5', concat(cast(BidderID as varchar),'|',cast(BidderStatusID as varchar))) as hashValue from DBT_Auct_Bidder_Source