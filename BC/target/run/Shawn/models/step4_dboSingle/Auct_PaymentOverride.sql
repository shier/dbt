
  
  if object_id ('"dbo"."Auct_PaymentOverride__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PaymentOverride__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PaymentOverride__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PaymentOverride__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PaymentOverride__dbt_tmp_temp_view as
    
Select
	cast([PaymentOverride_ID] as int) [PAYMENTOVERRIDE_ID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([ApproverUserID] as int) [APPROVERUSERID],
	cast([RequestUserID] as int) [REQUESTUSERID],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Created] as datetime) [CREATED] 
From stg.[Auct_PaymentOverride_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PaymentOverride__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PaymentOverride__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PaymentOverride__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PaymentOverride__dbt_tmp_temp_view"
    end


