{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentCompleteStatusID] as int) [CONSIGNMENTCOMPLETESTATUSID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DisplayOrder] as numeric(18,0)) [DISPLAYORDER],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_ConsignmentCompleteStatus_FinalView]