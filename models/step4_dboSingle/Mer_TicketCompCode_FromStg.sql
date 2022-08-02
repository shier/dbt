{{ config(materialized='table',schema='dbo')}}
Select
	cast([Comp_Code] as int) [CompCode],
	cast([Comp_Name] as nvarchar(500)) [CompName],
	cast([Comp_Description] as nvarchar(4000)) [CompDescription] 
From stg.[Mer_TicketCompCode_FinalView]