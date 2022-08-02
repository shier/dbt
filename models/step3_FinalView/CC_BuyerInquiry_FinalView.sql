{{ config(materialized='view',schema='stg')}}
Select
	[ID],[IpAddress],[Browser],[FirstName],[LastName],[Email],[Phone],[Message],[UserAgent],[ListingID],[EmailFilterCodeID],[WantsNewsLetter],[WantsrrcInfo],[IsActive],[EmailProcessed],[CopyProcessed],[FollowupProcessed],[CreateDate],[ModifyDate],[EmailSentUTC] 
From stg.[CC_BuyerInquiry_Incr] 
Where [dbt_valid_to] is null