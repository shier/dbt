
  
  if object_id ('"dbo"."Auct_DepartmentChargePayment_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DepartmentChargePayment_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DepartmentChargePayment_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DepartmentChargePayment_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DepartmentChargePayment_FromStg__dbt_tmp_temp_view as
    
Select
	cast([DepartmentChargePaymentID] as int) [DepartmentChargePaymentID],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([PaymentID] as int) [PaymentID],
	cast([ChargeID] as int) [ChargeID],
	cast([VendorAuctionID] as int) [VendorAuctionID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID] 
From stg.[Auct_DepartmentChargePayment_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DepartmentChargePayment_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DepartmentChargePayment_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DepartmentChargePayment_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DepartmentChargePayment_FromStg__dbt_tmp_temp_view"
    end


