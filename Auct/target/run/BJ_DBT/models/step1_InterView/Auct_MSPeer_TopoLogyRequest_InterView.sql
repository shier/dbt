create view "dbo_stg"."Auct_MSPeer_TopoLogyRequest_InterView__dbt_tmp" as
    
Select
	[id] [ID],
	cast([publication] as nvarchar(4000)) [Publication],
	[sent_date] [Sent_Date]
From stg.[Auct_MSPeer_TopoLogyRequest_Raw]
