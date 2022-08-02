{{ config(materialized='table',schema='dbo')}}
Select
	cast([Originator_ID] as int) [Originator_ID],
	cast([Originator_Publication] as nvarchar(4000)) [Originator_Publication],
	cast([Originator_Node] as nvarchar(4000)) [Originator_Node],
	cast([Originator_Db] as nvarchar(4000)) [Originator_Db],
	cast([Originator_Db_Version] as int) [Originator_Db_Version],
	cast([Originator_Version] as int) [Originator_Version],
	cast([Inserted_Date] as datetime) [Inserted_Date] 
From stg.[Auct_MSPeer_OriginatorID_History_FinalView]