{{ config(materialized='table',schema='dbo')}}
Select
	cast([BadgeTypeID] as int) [BadgeTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_BadgeType_FinalView]