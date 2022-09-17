{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([SaleAdjustTypeID] as int) [SALEADJUSTTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([ProcessorName] as nvarchar(4000)) [PROCESSORNAME],
	cast([HtmlDescription] as nvarchar(4000)) [HTMLDESCRIPTION],
	cast([ClassName] as nvarchar(4000)) [CLASSNAME] 
From stg.[Auct_SaleAdjustType_FinalView]