create view "stg"."CC_Auction_FinalView__dbt_tmp" as
    
Select
	[ID],[Name],[Description],[Location],[DateInfo],[SiteURL],[ContactURL],[BidderURL],[SellerURL],[ThuMbnailURL],[ImageURL],[WordPressTag],[CreateDate],[ModifyDate],[CompanyID],[IsActive] 
From stg.[CC_Auction_Incr] 
Where [dbt_valid_to] is null
