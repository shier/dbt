{{ config(materialized='table',schema='dbo')}}
Select
	cast([InspectionID] as int) [InspectionID],
	cast([CarID] as int) [CarID],
	cast([OwnerContactID] as int) [OwnerContactID],
	cast([PerFormedByContactID] as int) [PerFormedByContactID],
	cast([Results] as nvarchar(4000)) [Results],
	cast([DateperFormed] as DATETIME) [DateperFormed],
	cast([DateRequested] as DATETIME) [DateRequested],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Inspection_FinalView]