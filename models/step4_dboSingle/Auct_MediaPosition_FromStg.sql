{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaPositionID] as int) [MediaPositionID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MediaPosition_FinalView]