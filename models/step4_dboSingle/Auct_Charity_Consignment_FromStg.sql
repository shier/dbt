{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([CharityID] as int) [CharityID],
	cast([Active] as int) [Active] 
From stg.[Auct_Charity_Consignment_FinalView]