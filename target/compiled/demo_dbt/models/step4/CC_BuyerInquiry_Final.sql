
Select
	[ID],[CreateDate],[ModifyDate],[EmailSentUTC],[WantsrrcInfo],[IsActive],[EmailProcessed],[CopyProcessed],[FollowupProcessed],[ListingID],[EmailFilterCodeID],[WantsNewsLetter],[UserAgent],[Browser],[FirstName],[LastName],[Email],[Phone],[Message],[IpAddress] 
From stg.[CC_BuyerInquiry_Incr] 
Where [dbt_valid_to] is null