create view "stg"."Auct_BCPaymentType_InterView__dbt_tmp" as
    
Select
	[BCPAYMENTTYPEID] [BCPaymentTypeID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_BCPaymentType_Raw]
