{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [id],
	cast([Publication] as nvarchar(4000)) [publication],
	cast([Sent_Date] as datetime) [sent_date] 
From stg.[Auct_MSPeer_TopoLogyRequest_FinalView]