
  
  if object_id ('"dbo"."Auct_Bidder__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Bidder__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Bidder__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Bidder__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Bidder__dbt_tmp_temp_view as
    
Select
	cast([BidderID] as int) [BidderID],
	cast([BidderNumber] as numeric(18,2)) [BidderNumber],
	cast([BidLimit] as money) [BidLimit],
	cast([BidderTypeID] as int) [BidderTypeID],
	cast([BidderStatusID] as int) [BidderStatusID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([AnniversaryDate] as datetime) [AnniversaryDate],
	cast([ApprovedBy] as int) [ApprovedByUserID],
	cast([Comments] as varchar(512)) [Comments],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([PaymentMethodID] as int) [PaymentMethodID],
	cast([AddressID] as int) [AddressID],
	cast([ShippingAddressID] as int) [ShippingAddressID],
	cast([ContactPhoneID] as int) [ContactPhoneID] 
From stg.[Auct_Bidder_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Bidder__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Bidder__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Bidder__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Bidder__dbt_tmp_temp_view"
    end


