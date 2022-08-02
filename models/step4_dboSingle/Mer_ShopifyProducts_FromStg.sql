{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as varchar(64)) [ProductID],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Bodyhtml] as varchar(8000)) [Description],
	cast([Vendor] as varchar(300)) [Vendor],
	cast([Options2Name] as varchar(300)) [Options2Name],
	cast([Options2Values] as varchar(8000)) [Options2Values],
	cast([Options3Name] as varchar(300)) [Options3Name],
	cast([Options3Values] as varchar(8000)) [Options3Values],
	cast([ProductType] as varchar(300)) [ProductType],
	cast([Handle] as varchar(8000)) [Handle(suggesttorenamethecolumn)],
	cast([Tags] as varchar(8000)) [Tags],
	cast([Publishedscope] as varchar(128)) [PublishedScope],
	cast([Options1Name] as varchar(300)) [Options1Name],
	cast([Options1Values] as varchar(8000)) [Options1Values],
	cast([PublishedDate] as datetime) [PublishedDate],
	cast([CreatedDate] as datetime) [Created],
	cast([Updateddate] as datetime) [UpdatedDate],
	cast([RemovedDate] as datetime) [DeletedDate] 
From stg.[Mer_ShopifyProducts_FinalView]