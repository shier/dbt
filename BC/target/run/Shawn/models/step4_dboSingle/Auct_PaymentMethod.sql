
  
  if object_id ('"dbo"."Auct_PaymentMethod__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PaymentMethod__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PaymentMethod__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PaymentMethod__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PaymentMethod__dbt_tmp_temp_view as
    
Select
	cast([MinimumDepositValue] as numeric(18,0)) [MINIMUMDEPOSITVALUE],
	cast([PaymentMethodID] as int) [PAYMENTMETHODID],
	cast([Name] as nvarchar(512)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([BidDisplay] as nvarchar(512)) [BIDDISPLAY],
	cast([VendorDisplay] as nvarchar(512)) [VENDORDISPLAY],
	cast([ConsignDisplay] as nvarchar(512)) [CONSIGNDISPLAY],
	cast([MediaDisplay] as nvarchar(512)) [MEDIADISPLAY],
	cast([SponsorDisplay] as nvarchar(512)) [SPONSORDISPLAY],
	cast([BidderDisplay] as nvarchar(512)) [BIDDERDISPLAY],
	cast([LotDisplay] as nvarchar(512)) [LOTDISPLAY],
	cast([ProcessorID] as int) [PROCESSORID],
	cast([WebDisplayName] as nvarchar(512)) [WEBDISPLAYNAME],
	cast([WebDescription] as nvarchar(512)) [WEBDESCRIPTION],
	cast([WebDisplayBit] as int) [WEBDISPLAYBIT],
	cast([BCPaymentCode] as nvarchar(512)) [BCPAYMENTCODE] 
From stg.[Auct_PaymentMethod_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PaymentMethod__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PaymentMethod__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PaymentMethod__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PaymentMethod__dbt_tmp_temp_view"
    end


