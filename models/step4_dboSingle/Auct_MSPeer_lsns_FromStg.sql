{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Last_Updated] as datetime) [Last_Updated],
	cast([Originator] as nvarchar(4000)) [Originator],
	cast([Originator_Db] as nvarchar(4000)) [Originator_Db],
	cast([Originator_Publication] as nvarchar(4000)) [Originator_Publication],
	cast([Originator_Publication_ID] as int) [Originator_Publication_ID],
	cast([Originator_Db_Version] as int) [Originator_Db_Version],
	cast([Originator_lsn] as varbinary(8000)) [Originator_lsn],
	cast([Originator_Version] as int) [Originator_Version],
	cast([Originator_ID] as int) [Originator_ID] 
From stg.[Auct_MSPeer_lsns_FinalView]