
  
  if object_id ('"dbo"."Auct_WorldRecords__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WorldRecords__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_WorldRecords__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_WorldRecords__dbt_tmp"
    end


   EXEC('create view dbo.Auct_WorldRecords__dbt_tmp_temp_view as
    
Select
	cast([Wrsp] as numeric(18,2)) [WRSP],
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER],
	cast([Wrsh] as numeric(18,2)) [WRSH],
	cast([Wrsscm] as numeric(18,2)) [WRSSCM],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([Created] as datetime) [CREATED] 
From stg.[Auct_WorldRecords_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_WorldRecords__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_WorldRecords__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_WorldRecords__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WorldRecords__dbt_tmp_temp_view"
    end


