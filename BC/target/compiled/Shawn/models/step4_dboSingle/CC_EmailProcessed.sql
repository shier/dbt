
Select
	cast([ID] as int) [Id],
	cast([ResponseCode] as int) [ResponseCode],
	cast([ForeignID] as int) [ForeignId],
	cast([DateSent] as datetime) [DateSent],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([SentFrom] as nvarchar(4000)) [SentFrom],
	cast([Replyto] as nvarchar(4000)) [ReplyTo],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([Template] as nvarchar(4000)) [Template],
	cast([Fields] as nvarchar(4000)) [Fields],
	cast([Meta] as nvarchar(4000)) [Meta],
	cast([Response] as nvarchar(4000)) [Response],
	cast([MandrillID] as nvarchar(4000)) [MandrillId],
	cast([MandrillrejectReason] as nvarchar(4000)) [MandrillRejectReason],
	cast([SuBJect] as nvarchar(4000)) [Subject] 
From stg.[CC_EmailProcessed_FinalView]