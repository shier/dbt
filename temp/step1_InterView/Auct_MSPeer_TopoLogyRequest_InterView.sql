{{ config(materialized='view',schema='stg')}}
Select
	[id] [ID],
	cast([publication] as nvarchar(4000)) [Publication],
	[sent_date] [Sent_Date]
From stg.[Auct_MSPeer_TopoLogyRequest_Raw]
