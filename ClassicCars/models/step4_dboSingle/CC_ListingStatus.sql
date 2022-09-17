{{ config(materialized='table',schema='dbo')}}
Select
	cast([Description] as nvarchar(50)) [Description],
	cast([ID] as int) [Id] 
From stg.[CC_ListingStatus_FinalView]