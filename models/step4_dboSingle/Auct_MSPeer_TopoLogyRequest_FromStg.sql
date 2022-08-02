{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Publication] as nvarchar(4000)) [Publication],
	cast([Sent_Date] as datetime) [Sent_Date] 
From stg.[Auct_MSPeer_TopoLogyRequest_FinalView]