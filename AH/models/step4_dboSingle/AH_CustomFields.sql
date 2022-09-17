{{ config(materialized='table',schema='dbo')}}
Select
	cast([Required] as bit) [Required],
	cast([Deferred] as bit) [Deferred],
	cast([Encrypted] as bit) [Encrypted],
	cast([IncludeonInvoice] as bit) [IncludeOnInvoice],
	cast([IncludeinSalesReport] as bit) [IncludeInSalesReport],
	cast([IncludeonInvoiceasSeller] as bit) [IncludeOnInvoiceAsSeller],
	cast([IncludeonInvoiceasBuyer] as bit) [IncludeOnInvoiceAsBuyer],
	cast([IncludeinSalesReportasSeller] as bit) [IncludeInSalesReportAsSeller],
	cast([IncludeinSalesReportasBuyer] as bit) [IncludeInSalesReportAsBuyer],
	cast([ID] as int) [Id],
	cast([Type] as int) [Type],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([VisiBIlity] as int) [Visibility],
	cast([MutaBIlity] as int) [Mutability],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Name] as nvarchar(500)) [Name],
	cast([DefaultValue] as nvarchar(300)) [DefaultValue],
	cast([GroupName] as nvarchar(500)) [GroupName],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser] 
From stg.[AH_CustomFields_FinalView]