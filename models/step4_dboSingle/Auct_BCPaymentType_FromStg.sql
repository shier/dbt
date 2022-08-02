{{ config(materialized='table',schema='dbo')}}
Select
	cast([BCPaymentTypeID] as int) [BCPaymentTypeID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_BCPaymentType_FinalView]