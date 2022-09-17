
  
  if object_id ('"dbo"."AH_CustomFields__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CustomFields__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_CustomFields__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_CustomFields__dbt_tmp"
    end


   EXEC('create view dbo.AH_CustomFields__dbt_tmp_temp_view as
    
Select
	cast([Required] as bit) [IsRequired],
	cast([Deferred] as bit) [IsDeferred],
	cast([Encrypted] as bit) [IsEncrypted],
	cast([IncludeonInvoice] as bit) [IsIncludeOnInvoice],
	cast([IncludeinSalesReport] as bit) [IsIncludeInSalesReport],
	cast([IncludeonInvoiceasSeller] as bit) [IsIncludeOnInvoiceAsSeller],
	cast([IncludeonInvoiceasBuyer] as bit) [IsIncludeOnInvoiceAsBuyer],
	cast([IncludeinSalesReportasSeller] as bit) [IsIncludeInSalesReportAsSeller],
	cast([IncludeinSalesReportasBuyer] as bit) [IsIncludeInSalesReportAsBuyer],
	cast([ID] as int) [CustomFieldID],
	cast([Type] as int) [Type],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([VisiBIlity] as int) [Visibility],
	cast([MutaBIlity] as int) [Mutability],
	cast([CreatedOn] as datetime) [Created_RWXCustomFields],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXCustomFields],
	cast([DeletedOn] as datetime) [DeletedDate_RWXCustomFields],
	cast([Name] as nvarchar(500)) [Name],
	cast([DefaultValue] as nvarchar(300)) [DefaultValue],
	cast([GroupName] as nvarchar(500)) [GroupName],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXCustomFields] 
From stg.[AH_CustomFields_FinalView]
    ');

  CREATE TABLE "dbo"."AH_CustomFields__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_CustomFields__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_CustomFields__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CustomFields__dbt_tmp_temp_view"
    end


