
Select
	[ID],[SentFrom],[Replyto],[IpAddress],[Template],[Fields],[Meta],[Response],[MandrillID],[MandrillrejectReason],[SuBJect],[ResponseCode],[ForeignID],[DateSent],[CreateDate],[ModifyDate],[IsActive] 
From stg.[CC_EmailProcessed_Incr] 
Where [dbt_valid_to] is null