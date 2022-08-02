{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Processor] as nvarchar(4000)) [Processor],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Amount] as numeric(194)) [Amount],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ListingTypeID] as int) [ListingTypeID],
	cast([EventID] as int) [EventID] 
From stg.[AH_Feeproperties_FinalView]