{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Description] as nvarchar(50)) [ListingStatus] 
From stg.[CC_ListingStatus_FinalView]