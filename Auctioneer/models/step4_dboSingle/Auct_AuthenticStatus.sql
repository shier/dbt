{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuthenticStatusID] as int) [AUTHENTICSTATUSID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([BidGeneratorText] as nvarchar(4000)) [BIDGENERATORTEXT],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AuthenticStatus_FinalView]