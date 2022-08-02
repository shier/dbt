{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuthenticStatusID] as int) [AuthenticStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([BidGeneratorText] as nvarchar(4000)) [BIdGeneratorText],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AuthenticStatus_FinalView]