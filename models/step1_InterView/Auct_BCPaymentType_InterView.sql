{{ config(materialized='view',schema='stg')}}
Select
	[BCPAYMENTTYPEID] [BCPaymentTypeID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_BCPaymentType_Raw]
