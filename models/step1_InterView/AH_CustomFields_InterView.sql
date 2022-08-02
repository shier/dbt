{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[Required] [Required],
	[Deferred] [Deferred],
	[Encrypted] [Encrypted],
	[IncludeOnInvoice] [IncludeonInvoice],
	[IncludeInSalesReport] [IncludeinSalesReport],
	[IncludeOnInvoiceAsSeller] [IncludeonInvoiceasSeller],
	[IncludeOnInvoiceAsBuyer] [IncludeonInvoiceasBuyer],
	[IncludeInSalesReportAsSeller] [IncludeinSalesReportasSeller],
	[IncludeInSalesReportAsBuyer] [IncludeinSalesReportasBuyer],
	[Type] [Type],
	[DisplayOrder] [DisplayOrder],
	[Visibility] [VisiBIlity],
	[Mutability] [MutaBIlity],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DefaultValue] as nvarchar(4000)) [DefaultValue],
	cast([GroupName] as nvarchar(4000)) [GroupName],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_CustomFields_Raw]
