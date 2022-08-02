{{ config(materialized='table',schema='dbo')}}
Select
	cast([SaleAdjustTypeID] as int) [SaleAdjustTypeID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ProcessorName] as nvarchar(4000)) [ProcessorName],
	cast([HtmlDescription] as nvarchar(4000)) [HtmlDescription],
	cast([ClassName] as nvarchar(4000)) [ClassName] 
From stg.[Auct_SaleAdjustType_FinalView]