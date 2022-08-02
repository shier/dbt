{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[ResponseCode] [ResponseCode],
	[ForeignId] [ForeignID],
	[DateSent] [DateSent],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[IsActive] [IsActive],
	cast([SentFrom] as nvarchar(4000)) [SentFrom],
	cast([ReplyTo] as nvarchar(4000)) [Replyto],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([Template] as nvarchar(4000)) [Template],
	cast([Fields] as nvarchar(4000)) [Fields],
	cast([Meta] as nvarchar(4000)) [Meta],
	cast([Response] as nvarchar(4000)) [Response],
	cast([MandrillId] as nvarchar(4000)) [MandrillID],
	cast([MandrillRejectReason] as nvarchar(4000)) [MandrillrejectReason],
	cast([Subject] as nvarchar(4000)) [SuBJect]
From stg.[CC_EmailProcessed_Raw]
