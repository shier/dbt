
  
  if object_id ('"dbo_dbo"."AH_SubmittedListingPayment_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_SubmittedListingPayment_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_dbo"."AH_SubmittedListingPayment_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo_dbo"."AH_SubmittedListingPayment_FT__dbt_tmp"
    end


   EXEC('create view dbo_dbo.AH_SubmittedListingPayment_FT__dbt_tmp_temp_view as
    
with updateData as (
    select 
		FTstg.[SubmittedListingPaymentID],
		FTtmp.[Consignor_Skey],
		FTstg.[ListingID],
		FTstg.[Amount],
		FTstg.[HasProPhotography],
		FTstg.[HasProMarketing],
		FTstg.[TransactionID],
		FTstg.[CreatedDate],
		FTstg.[UpdatedDate]
    from stg.AH_SubmittedListingPayment_FT_tmp as FTtmp 
    join stg.AH_SubmittedListingPayment_FT_stg as FTstg 
    on FTstg.SubmittedListingPaymentID=FTtmp.SubmittedListingPaymentID
)
,
insertData as (
    select 
        [SubmittedListingPaymentID],
        [Consignor_Skey],
        [ListingID],
        [Amount],
        [HasProPhotography],
        [HasProMarketing],
        [TransactionID],
        [CreatedDate],
        [UpdatedDate]
    from stg.AH_SubmittedListingPayment_FT_tmp
    where SubmittedListingPaymentID not in (select  SubmittedListingPaymentID from stg.AH_SubmittedListingPayment_FT_stg)
)
SELECT
	[SubmittedListingPaymentID],
	[Consignor_Skey],
	[ListingID],
	[Amount],
	[HasProPhotography],
	[HasProMarketing],
	[TransactionID],
	[CreatedDate],
	[UpdatedDate]
from updateData

union all

SELECT
	[SubmittedListingPaymentID],
	[Consignor_Skey],
	[ListingID],
	[Amount],
	[HasProPhotography],
	[HasProMarketing],
	[TransactionID],
	[CreatedDate],
	[UpdatedDate]
from insertData
    ');

  CREATE TABLE "dbo_dbo"."AH_SubmittedListingPayment_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_dbo.AH_SubmittedListingPayment_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_dbo"."AH_SubmittedListingPayment_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_SubmittedListingPayment_FT__dbt_tmp_temp_view"
    end


