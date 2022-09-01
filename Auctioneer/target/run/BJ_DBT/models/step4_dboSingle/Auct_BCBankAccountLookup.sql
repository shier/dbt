
  
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
	cast([BCBankAccountLookupID] as int) [BCBankAccountLookupID],
	cast([BCBankAccountID] as int) [BCBankAccountID],
	cast([AuctionID] as int) [AuctionID],
	cast([FeeCategoryID] as int) [FeeCategoryID],
	cast([PaymentMethodID] as int) [PaymentMethodID],
	cast([BCPaymentTypeID] as int) [BCPaymentTypeID],
	cast([ItemTypeID] as int) [ItemTypeID] 
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


