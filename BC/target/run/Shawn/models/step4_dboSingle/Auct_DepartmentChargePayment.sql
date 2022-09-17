
  
  if object_id ('"dbo"."Auct_DepartmentChargePayment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DepartmentChargePayment__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DepartmentChargePayment__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DepartmentChargePayment__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DepartmentChargePayment__dbt_tmp_temp_view as
    
Select
	cast([Amount] as numeric(19,4)) [AMOUNT],
	cast([DepartmentChargePaymentID] as int) [DEPARTMENTCHARGEPAYMENTID],
	cast([PaymentID] as int) [PAYMENTID],
	cast([ChargeID] as int) [CHARGEID],
	cast([VendorAuctionID] as int) [VENDORAUCTIONID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID] 
From stg.[Auct_DepartmentChargePayment_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DepartmentChargePayment__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DepartmentChargePayment__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DepartmentChargePayment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DepartmentChargePayment__dbt_tmp_temp_view"
    end


