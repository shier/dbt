
Select
	Required Required,
	Deferred Deferred,
	Encrypted Encrypted,
	IncludeOnInvoice IncludeonInvoice,
	IncludeInSalesReport IncludeinSalesReport,
	IncludeOnInvoiceAsSeller IncludeonInvoiceasSeller,
	IncludeOnInvoiceAsBuyer IncludeonInvoiceasBuyer,
	IncludeInSalesReportAsSeller IncludeinSalesReportasSeller,
	IncludeInSalesReportAsBuyer IncludeinSalesReportasBuyer,
	Id ID,
	Type Type,
	DisplayOrder DisplayOrder,
	Visibility VisiBIlity,
	Mutability MutaBIlity,
	DeletedOn Deletedon,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	cast(Name as nvarchar(4000)) Name,
	cast(DefaultValue as nvarchar(4000)) DefaultValue,
	cast(GroupName as nvarchar(4000)) GroupName,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser
From AH_CustomFields_Raw