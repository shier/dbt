create view "stg"."CC_SEndtofriend_FinalView__dbt_tmp" as
    
Select
	[ID],[IpAddress],[Message],[Browser],[UserAgent],[SEnderName],[SEnderEmail],[ReceiverName],[ReceiverEmail],[IsActive],[SEnderwantsCopy],[WantsNewsLetter],[WantsrrcInfo],[EmailProcessed],[CopyProcessed],[ListingID],[EmailFilterCodeID],[CreateDate],[ModifyDate] 
From stg.[CC_SEndtofriend_Incr] 
Where [dbt_valid_to] is null
