
Select
	cast([BCPaymentTypeID] as int) [BCPAYMENTTYPEID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_BCPaymentType_FinalView]