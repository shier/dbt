
  
  if object_id ('"dbo"."BC_BJAuctionCompany_Vendor_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_Vendor_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_Vendor_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_Vendor_DM__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_Vendor_DM__dbt_tmp_temp_view as
    
SELECT
    [No_],
    [Name],
    [SearchName],
    [Name2],
    [Address],
    [Address2],
    [City],
    [Contact],
    [PhoneNo_],
    [TelexNo_],
    [OurAccountNo_],
    [TerritoryCode],
    [GlobalDimension1Code],
    [GlobalDimension2Code],
    [BudgetedAmount],
    [VendorPostingGroup],
    [CurrencyCode],
    [LanguageCode],
    [StatisticsGroup],
    [PaymentTermsCode],
    [Fin_ChargeTermsCode],
    [PurchaserCode],
    [ShipmentMethodCode],
    [ShippingAgentCode],
    [InvoiceDisc_Code],
    [Country_RegionCode],
    [Blocked],
    [Pay-toVendorNo_],
    [Priority],
    [PaymentMethodCode],
    [LastDateModified],
    [ApplicationMethod],
    [PricesIncludingVAT],
    [FaxNo_],
    [TelexAnswerBack],
    [VATRegistrationNo_],
    [Gen_Bus_PostingGroup],
    -- [Picture],
    [PostCode],
    [County],
    [E-Mail],
    [HomePage],
    [No_Series],
    [TaxAreaCode],
    [TaxLiable],
    [VATBus_PostingGroup],
    [BlockPaymentTolerance],
    [ICPartnerCode],
    [Prepayment_],
    [PartnerType],
    [CreditorNo_],
    [PreferredBankAccountCode],
    [CashFlowPaymentTermsCode],
    [PrimaryContactNo_],
    [ResponsibilityCenter],
    [LocationCode],
    [LeadTimeCalculation],
    [BaseCalendarCode],
    [UPSZone],
    [FederalIDNo_],
    [BankCommunication],
    [CheckDateFormat],
    [CheckDateSeparator],
    [IRS1099Code],
    [RFCNo_],
    [CURPNo_],
    [StateInscription],
    [TaxIdentificationType],
    [FATCAfilingrequirement],
    [LastModifiedDateTime],
    [GLN],
    [Image],
    [DocumentSendingProfile],
    [ValidateEUVatReg_No_],
    [Id],
    [CurrencyId],
    [PaymentTermsId],
    [PaymentMethodId],
    [PrivacyBlocked],
    [DisableSearchbyName],
    [EORINumber],
    [MobilePhoneNo_],
    [PriceCalculationMethod],
    [Over-ReceiptCode],
    [DIOT-TypeofOperation]
from [stg].[BC_BJAuctionCompany_Vendor_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_Vendor_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_Vendor_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_Vendor_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_Vendor_DM__dbt_tmp_temp_view"
    end


