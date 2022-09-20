
  
  if object_id ('"dbo"."BC_BJAuctionCompany_GLAccount_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_GLAccount_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_GLAccount_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_GLAccount_DM__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_GLAccount_DM__dbt_tmp_temp_view as
    
SELECT
    [No_],
    [Name],
    [SearchName],
    [AccountType],
    [GlobalDimension1Code],
    [GlobalDimension2Code],
    [Income_Balance],
    [Debit_Credit],
    [No_2],
    [Blocked],
    [DirectPosting],
    [ReconciliationAccount],
    [NewPage],
    [No_ofBlankLines],
    [Indentation],
    [LastDateModified],
    [Totaling],
    [Consol_TranslationMethod],
    [Consol_DebitAcc_],
    [Consol_CreditAcc_],
    [Gen_PostingType],
    [Gen_Bus_PostingGroup],
    [Gen_Prod_PostingGroup],
    -- [Picture],
    [AutomaticExt_Texts],
    [TaxAreaCode],
    [TaxLiable],
    [TaxGroupCode],
    [VATBus_PostingGroup],
    [VATProd_PostingGroup],
    [ExchangeRateAdjustment],
    [DefaultICPartnerG_LAcc_No],
    [CostTypeNo_],
    [GIFICode],
    [AccountCategory],
    [LastModifiedDateTime],
    [OmitDefaultDescr_inJnl_],
    [AccountSubcategoryEntryNo_],
    [DefaultDeferralTemplateCode],
    [Id],
    [SATAccountCode],
    [APIAccountType]
from [stg].[BC_BJAuctionCompany_GLAccount_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_GLAccount_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_GLAccount_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_GLAccount_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_GLAccount_DM__dbt_tmp_temp_view"
    end


