{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarOptionID] as int) [CAROPTIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CarOption_FinalView]