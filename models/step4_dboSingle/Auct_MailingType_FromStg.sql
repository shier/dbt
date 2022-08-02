{{ config(materialized='table',schema='dbo')}}
Select
	cast([MailingTypeID] as int) [MailingTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Subscribable] as nvarchar(4000)) [Subscribable],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MailingType_FinalView]