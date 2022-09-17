{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReviewStatusID] as int) [REVIEWSTATUSID],
	cast([Name] as nvarchar(512)) [NAME] 
From stg.[Auct_ReviewStatus_FinalView]