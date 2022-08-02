
  
  if object_id ('"stg"."Auct_Journal_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Journal_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Journal_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Journal_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Journal_Final__dbt_tmp_temp_view as
    
Select
	[JournalID],[AuctionID],[ProjectID],[Ln],[AccountID],[CustomerAccountID],[TimeCreated],[JournalType],[DepositID],[CarConsignmentID],[InvoiceID],[BidderID],[DealerID],[VendorID],[MediaID],[SponsorID],[VendorSpaceID],[InventoryID],[ContactName],[Address],[City],[StateProvince],[PostalCode],[Country],[Phoneac],[Phone],[Description],[PaymentMethod],[CheckNumber],[CreditCardNumber],[CreditCardExp],[Comments],[DateCreated],[CreatedBy],[DateModified],[ModifiedBy],[ServerCreatedBy],[ServerModifiedBy],[Status],[Credit],[Debit],[Rn] 
From stg.[Auct_Journal_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_Journal_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Journal_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Journal_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Journal_Final__dbt_tmp_temp_view"
    end


