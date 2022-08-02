{{ config(materialized='table',schema='dbo')}}
Select
	cast([UserContactTypeID] as int) [UserContactTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_UserContactType_FinalView]