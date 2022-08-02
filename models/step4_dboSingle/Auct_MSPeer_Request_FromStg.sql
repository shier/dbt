{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Publication] as nvarchar(4000)) [Publication],
	cast([Sent_Date] as datetime) [Sent_Date],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_MSPeer_Request_FinalView]