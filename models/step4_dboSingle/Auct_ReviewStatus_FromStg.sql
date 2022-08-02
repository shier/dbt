{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReviewStatusID] as int) [ReviewStatusID],
	cast([Name] as nvarchar(512)) [ReviewStatus] 
From stg.[Auct_ReviewStatus_FinalView]