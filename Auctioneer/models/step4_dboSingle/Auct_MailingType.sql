{{ config(materialized='table',schema='dbo')}}
Select
	cast([MailingTypeID] as int) [MAILINGTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Subscribable] as nvarchar(4000)) [SUBSCRIBABLE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MailingType_FinalView]