{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[SecondsToGenerate] [SecondstogeneRate],
	cast([ReportName] as nvarchar(4000)) [ReportName],
	cast([Data] as nvarchar(4000)) [Data],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[UserId] [UserID]
From stg.[AH_Reports_Raw]
