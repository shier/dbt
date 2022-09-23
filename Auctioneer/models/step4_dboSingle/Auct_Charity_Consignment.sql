{{ config(materialized='table',schema='dbo')}}
Select
	cast([CharityID] as int) [CHARITYID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_Charity_Consignment_FinalView]
