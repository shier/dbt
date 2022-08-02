{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[AH_ShippingMethods_FinalView]