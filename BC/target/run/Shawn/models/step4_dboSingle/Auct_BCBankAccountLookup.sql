
  
  if object_id ('"dbo"."Auct_BCBankAccountLookup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BCBankAccountLookup__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BCBankAccountLookup__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BCBankAccountLookup__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BCBankAccountLookup__dbt_tmp_temp_view as
    
Select
	cast([BCBankAccountLookupID] as int) [BCBANKACCOUNTLOOKUPID],
	cast([BCBankAccountID] as int) [BCBANKACCOUNTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([FeeCategoryID] as int) [FEECATEGORYID],
	cast([PaymentMethodID] as int) [PAYMENTMETHODID],
	cast([BCPaymentTypeID] as int) [BCPAYMENTTYPEID],
	cast([ItemTypeID] as int) [ITEMTYPEID] 
From stg.[Auct_BCBankAccountLookup_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BCBankAccountLookup__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BCBankAccountLookup__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BCBankAccountLookup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BCBankAccountLookup__dbt_tmp_temp_view"
    end


