
  
  if object_id ('"dbo"."BC_BJAuctionCompany_Customer_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_Customer_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_Customer_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_Customer_DM__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_Customer_DM__dbt_tmp_temp_view as
    
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
    [ChainName],
    [BudgetedAmount],
    [CreditLimitLCY],
    [CustomerPostingGroup],
    [CurrencyCode],
    [CustomerPriceGroup],
    [LanguageCode],
    [StatisticsGroup],
    [PaymentTermsCode],
    [Fin_ChargeTermsCode],
    [SalespersonCode],
    [ShipmentMethodCode],
    [ShippingAgentCode],
    [PlaceofExport],
    [InvoiceDisc_Code],
    [CustomerDisc_Group],
    [Country_RegionCode],
    [CollectionMethod],
    [Amount],
    [Blocked],
    [InvoiceCopies],
    [LastStatementNo_],
    [PrintStatements],
    [Bill-toCustomerNo_],
    [Priority],
    [PaymentMethodCode],
    [LastDateModified],
    [ApplicationMethod],
    [PricesIncludingVAT],
    [LocationCode],
    [FaxNo_],
    [TelexAnswerBack],
    [VATRegistrationNo_],
    [CombineShipments],
    [Gen_Bus_PostingGroup],
    --[Picture],
    [PostCode],
    [County],
    [E-Mail],
    [HomePage],
    [ReminderTermsCode],
    [No_Series],
    [TaxAreaCode],
    [TaxLiable],
    [VATBus_PostingGroup],
    [Reserve],
    [BlockPaymentTolerance],
    [ICPartnerCode],
    [Prepayment_],
    [PartnerType],
    [PreferredBankAccountCode],
    [CashFlowPaymentTermsCode],
    [PrimaryContactNo_],
    [ResponsibilityCenter],
    [ShippingAdvice],
    [ShippingTime],
    [ShippingAgentServiceCode],
    [ServiceZoneCode],
    [AllowLineDisc_],
    [BaseCalendarCode],
    [CopySell-toAddr_toQteFrom],
    [UPSZone],
    [TaxExemptionNo_],
    [BankCommunication],
    [CheckDateFormat],
    [CheckDateSeparator],
    [RFCNo_],
    [CURPNo_],
    [StateInscription],
    [TaxIdentificationType],
    [DocumentSendingProfile],
    [LastModifiedDateTime],
    [GLN],
    [Image],
    [ContactType],
    [ValidateEUVatReg_No_],
    [Id],
    [CurrencyId],
    [PaymentTermsId],
    [ShipmentMethodId],
    [PaymentMethodId],
    [TaxAreaID],
    [ContactID],
    [ContactGraphId],
    [CFDIPurpose],
    [CFDIRelation],
    [Ship-toCode],
    [PrivacyBlocked],
    [DisableSearchbyName],
    [EORINumber],
    [UseGLNinElectronicDocument],
    [MobilePhoneNo_],
    [PriceCalculationMethod]

from [stg].[BC_BJAuctionCompany_Customer_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_Customer_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_Customer_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_Customer_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_Customer_DM__dbt_tmp_temp_view"
    end


