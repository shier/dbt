{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ResponseCode],[ForeignID],[DateSent],[CreateDate],[ModifyDate],[IsActive],[SentFrom],[Replyto],[IpAddress],[Template],[Fields],[Meta],[Response],[MandrillID],[MandrillrejectReason],[SuBJect] 
From stg.[CC_EmailProcessed_Incr] 
Where [dbt_valid_to] is null