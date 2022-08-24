
  
  if object_id ('"dbo"."Auct_Bidder_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Bidder_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Bidder_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Bidder_DM__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Bidder_DM__dbt_tmp_temp_view as
    
with Auct_Bidder_Ex (
    select * from Auct_Bidder_FinalView
)
SELECT
   HASHBYTES(''SHA2_256'', 
        COALESCE(CAST([BIDDERID] AS VARCHAR(20)), '''')
    ) AS [Bidder_Skey],
	[BIDDERID],
	[BIDDERTYPEID],
	[BIDDERSTATUSID],
	[CUSTOMERACCOUNTID],
	[BIDDERNUMBER],
	[ANNIVERSARYDATE],
	[APPROVEDBY],
	[COMMENTS],
	[CREATED],
	[UPDATEEVENTID],
	[BIDLIMIT],
	[PAYMENTMETHODID],
	[ADDRESSID],
	[SHIPPINGADDRESSID],
	[CONTACTPHONEID]
FROM [Auct_Bidder_Ex]
    ');

  CREATE TABLE "dbo"."Auct_Bidder_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Bidder_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Bidder_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Bidder_DM__dbt_tmp_temp_view"
    end


