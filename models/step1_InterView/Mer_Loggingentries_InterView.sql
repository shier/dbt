{{ config(materialized='view',schema='stg')}}
Select
	[ID] [ID],
	cast([MERCHANT_ID] as nvarchar(4000)) [Merchant_ID],
	cast([LOGTYPE] as nvarchar(4000)) [LogType],
	cast([ENTRY] as nvarchar(4000)) [Entry],
	[ADD_DATE] [Add_Date]
From stg.[Mer_Loggingentries_Raw]
