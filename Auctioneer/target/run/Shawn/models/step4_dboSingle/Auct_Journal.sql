
  
  if object_id ('"dbo"."Auct_Journal__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Journal__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Journal__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Journal__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Journal__dbt_tmp_temp_view as
    
Select
	cast([JournalID] as int) [JOURNALID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([ProjectID] as int) [PROJECTID],
	cast([Ln] as int) [LN],
	cast([AccountID] as int) [ACCOUNTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([TimeCreated] as DATETIME) [TIMECREATED],
	cast([JournalType] as nvarchar(4000)) [JOURNALTYPE],
	cast([DepositID] as nvarchar(4000)) [DEPOSITID],
	cast([CarConsignmentID] as int) [CARCONSIGNMENTID],
	cast([InvoiceID] as int) [INVOICEID],
	cast([BidderID] as int) [BIDDERID],
	cast([DealerID] as int) [DEALERID],
	cast([VendorID] as int) [VENDORID],
	cast([MediaID] as int) [MEDIAID],
	cast([SponsorID] as int) [SPONSORID],
	cast([VendorSpaceID] as int) [VENDORSPACEID],
	cast([InventoryID] as int) [INVENTORYID],
	cast([ContactName] as nvarchar(4000)) [CONTACTNAME],
	cast([Address] as nvarchar(4000)) [ADDRESS],
	cast([City] as nvarchar(4000)) [CITY],
	cast([StateProvince] as nvarchar(4000)) [STATEPROVINCE],
	cast([PostalCode] as nvarchar(4000)) [POSTALCODE],
	cast([Country] as int) [COUNTRY],
	cast([Phoneac] as nvarchar(4000)) [PHONEAC],
	cast([Phone] as nvarchar(4000)) [PHONE],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([PaymentMethod] as int) [PAYMENTMETHOD],
	cast([CheckNumber] as nvarchar(4000)) [CHECKNUMBER],
	cast([CreditCardNumber] as nvarchar(4000)) [CREDITCARDNUMBER],
	cast([CreditCardExp] as nvarchar(4000)) [CREDITCARDEXP],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([DateCreated] as DATETIME) [DATECREATED],
	cast([CreatedBy] as nvarchar(4000)) [CREATEDBY],
	cast([DateModified] as DATETIME) [DATEMODIFIED],
	cast([ModifiedBy] as nvarchar(4000)) [MODIFIEDBY],
	cast([ServerCreatedBy] as nvarchar(4000)) [SERVERCREATEDBY],
	cast([ServerModifiedBy] as nvarchar(4000)) [SERVERMODIFIEDBY],
	cast([Status] as nvarchar(4000)) [STATUS],
	cast([Credit] as numeric(19,4)) [CREDIT],
	cast([Debit] as numeric(19,4)) [DEBIT],
	cast([Rn] as numeric(18,2)) [RN] 
From stg.[Auct_Journal_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Journal__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Journal__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Journal__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Journal__dbt_tmp_temp_view"
    end


