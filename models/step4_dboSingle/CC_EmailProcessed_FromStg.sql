{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ResponseCode] as int) [ResponseCode],
	cast([ForeignID] as int) [ForeignID],
	cast([DateSent] as datetime) [DateSent],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([SentFrom] as nvarchar(4000)) [SentFrom],
	cast([Replyto] as nvarchar(4000)) [Replyto],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([Template] as nvarchar(4000)) [Template],
	cast([Fields] as nvarchar(4000)) [Fields],
	cast([Meta] as nvarchar(4000)) [Meta],
	cast([Response] as nvarchar(4000)) [Response],
	cast([MandrillID] as nvarchar(4000)) [MandrillID],
	cast([MandrillrejectReason] as nvarchar(4000)) [MandrillrejectReason],
	cast([SuBJect] as nvarchar(4000)) [SuBJect] 
From stg.[CC_EmailProcessed_FinalView]