{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([SecondstogeneRate] as numeric(194)) [SecondstogeneRate],
	cast([ReportName] as nvarchar(4000)) [ReportName],
	cast([Data] as nvarchar(4000)) [Data],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([UserID] as int) [UserID] 
From stg.[AH_Reports_FinalView]