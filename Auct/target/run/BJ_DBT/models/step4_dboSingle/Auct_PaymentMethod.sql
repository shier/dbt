
  
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
	cast([PaymentMethodID] as int) [PaymentMethodID],
	cast([MinimumDepositValue] as numeric(18,0)) [MinimumDepositValue],
	cast([Name] as nvarchar(512)) [PaymentMethod],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([BidDisplay] as nvarchar(512)) [BidDisplay],
	cast([VendorDisplay] as nvarchar(512)) [VendorDisplay],
	cast([ConsignDisplay] as nvarchar(512)) [ConsignDisplay],
	cast([MediaDisplay] as nvarchar(512)) [MediaDisplay],
	cast([SponsorDisplay] as nvarchar(512)) [SponsorDisplay],
	cast([BidderDisplay] as nvarchar(512)) [BidderDisplay],
	cast([LotDisplay] as nvarchar(512)) [LotDisplay],
	cast([ProcessorID] as int) [ProcessorID],
	cast([WebDisplayName] as nvarchar(512)) [WebDisplayName],
	cast([WebDescription] as nvarchar(512)) [WebDescription],
	cast([WebDisplayBit] as int) [WebDisplayBit],
	cast([BCPaymentCode] as nvarchar(512)) [BcPaymentCode] 
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


