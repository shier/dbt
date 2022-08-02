
Select
	[CallSourceLogPK],[CreateDateUTC],[Success],[IpAddress],[Message],[UserAgent],[AdfDoc] 
From stg.[CC_CallSourceLog_Incr] 
Where [dbt_valid_to] is null