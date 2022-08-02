
Select
	[ID],[ReceiverEmail],[Message],[IpAddress],[Browser],[UserAgent],[SEnderName],[SEnderEmail],[ReceiverName],[EmailFilterCodeID],[ListingID],[CreateDate],[ModifyDate],[IsActive],[SEnderwantsCopy],[WantsNewsLetter],[WantsrrcInfo],[EmailProcessed],[CopyProcessed] 
From stg.[CC_SEndtofriend_Incr] 
Where [dbt_valid_to] is null