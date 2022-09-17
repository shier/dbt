
  
  if object_id ('"dbo"."Auct_BlockBidSignature__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockBidSignature__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BlockBidSignature__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BlockBidSignature__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BlockBidSignature__dbt_tmp_temp_view as
    
Select
	cast([BlockBidSignatureID] as int) [BLOCKBIDSIGNATUREID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AuctionBidderNumber] as int) [AUCTIONBIDDERNUMBER],
	cast([SignaturePath] as nvarchar(4000)) [SIGNATUREPATH],
	cast([BlockBidID] as int) [BLOCKBIDID] 
From stg.[Auct_BlockBidSignature_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BlockBidSignature__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BlockBidSignature__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BlockBidSignature__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockBidSignature__dbt_tmp_temp_view"
    end


