{{ config(materialized='table',schema='dbo')}}
Select
	cast([LocationID] as int) [LOCATIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Location_FinalView]