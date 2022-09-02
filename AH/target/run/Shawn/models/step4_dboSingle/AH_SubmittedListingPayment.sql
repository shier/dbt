
  
  if object_id ('"dbo"."AH_SubmittedListingPayment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_SubmittedListingPayment__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_SubmittedListingPayment__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_SubmittedListingPayment__dbt_tmp"
    end


   EXEC('create view dbo.AH_SubmittedListingPayment__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([TransactionID] as nvarchar(30)) [TransactionID],
	cast([Amount] as decimal(24,2)) [Amount],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([ListingID] as int) [ListingID],
	cast([ConsignorID] as int) [UserID],
	cast([HasproMarketing] as bit) [HasProMarketing],
	cast([HasproPhotography] as bit) [HasProPhotography] 
From stg.[AH_SubmittedListingPayment_FinalView]
    ');

  CREATE TABLE "dbo"."AH_SubmittedListingPayment__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_SubmittedListingPayment__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_SubmittedListingPayment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_SubmittedListingPayment__dbt_tmp_temp_view"
    end


