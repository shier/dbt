{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Merchant_ID] as nvarchar(4000)) [Merchant_ID],
	cast([LogType] as nvarchar(4000)) [LogType],
	cast([Entry] as nvarchar(4000)) [Entry],
	cast([Add_Date] as datetime) [Add_Date] 
From stg.[Mer_Loggingentries_FinalView]