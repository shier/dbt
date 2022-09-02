
  
  if object_id ('"dbo"."AH_Car__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Car__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Car__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Car__dbt_tmp"
    end


   EXEC('create view dbo.AH_Car__dbt_tmp_temp_view as
    
SELECT
	H_CF.[ID] [CustomFieldID],
	H_CF.[Required] [IsRequired],
	H_CF.[Deferred] [IsDeferred],
	H_CF.[Encrypted] [IsEncrypted],
	H_CF.[IncludeonInvoice] [IsIncludeOnInvoice],
	H_CF.[IncludeinSalesReport] [IsIncludeInSalesReport],
	H_CF.[IncludeonInvoiceasSeller] [IsIncludeOnInvoiceAsSeller],
	H_CF.[IncludeonInvoiceasBuyer] [IsIncludeOnInvoiceAsBuyer],
	H_CF.[IncludeinSalesReportasSeller] [IsIncludeInSalesReportAsSeller],
	H_CF.[IncludeinSalesReportasBuyer] [IsIncludeInSalesReportAsBuyer],
	H_CF.[Type],
	H_CF.[DisplayOrder],
	H_CF.[VisiBIlity] [Visibility],
	H_CF.[MutaBIlity] [Mutability],
	cast(H_CF.[CreatedOn] as datetime) [Created_RWXCustomFields],
	cast(H_CF.[UpdatedOn] as datetime) [UpdatedDate_RWXCustomFields],
	cast(H_CF.[DeletedOn] as datetime) [DeletedDate_RWXCustomFields],
	cast(H_CF.[Name] as nvarchar(500)) [Name],
	cast(H_CF.[DefaultValue] as nvarchar(300)) [DefaultValue],
	cast(H_CF.[GroupName] as nvarchar(500)) [GroupName],
	cast(H_CF.[LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXCustomFields],
	H_LP.[ID],
	cast(H_LP.[DecimalnativeValue] as decimal(29,14)) [DecimalNativeValue],
	cast(H_LP.[StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast(H_LP.[EnumnativeValue] as nvarchar(200)) [EnumNativeValue],
	cast(H_LP.[LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXListingProperties],
	H_LP.[CreatedOn] [Created_RWXListingProperties],
	H_LP.[UpdatedOn] [UpdatedDate_RWXListingProperties],
	H_LP.[DeletedOn] [DeletedDate_RWXListingProperties],
	H_LP.[DateTimenativeValue] [DateTimeNativeValue],
	H_LP.[BoolnativeValue] [HasBoolNativeValue],
	H_LP.[IntnativeValue] [IntNativeValue],
	H_LP.[ListingID]
FROM [stg].[AH_CustomFields_FinalView] AS H_CF 
JOIN [stg].[AH_Listingproperties_FinalView] AS H_LP ON H_LP.[CustomFieldID]=H_CF.[ID]
    ');

  CREATE TABLE "dbo"."AH_Car__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Car__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Car__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Car__dbt_tmp_temp_view"
    end


