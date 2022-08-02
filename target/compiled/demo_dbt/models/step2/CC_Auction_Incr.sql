
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Description, Location, ImageURL, WordPressTag, DateInfo, SiteURL, ContactURL, BidderURL, SellerURL, ThuMbnailURL, Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(CompanyID as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Auction_Inter]
	)
Select * From hashData
