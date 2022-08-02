
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(PROCESSORNAME as nvarchar(4000)) ProcessorName,
	cast(HTMLDESCRIPTION as nvarchar(4000)) HtmlDescription,
	cast(CLASSNAME as nvarchar(4000)) ClassName,
	SALEADJUSTTYPEID SaleAdjustTypeID,
	ACTIVE Active
From Auct_SaleAdjustType_Raw