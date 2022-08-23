
  
  if object_id ('"dbo"."Auct_AuctionLocation_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionLocation_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionLocation_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionLocation_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionLocation_FromStg__dbt_tmp_temp_view as
    
Select
	cast([AuctionLocationID] as int) [AuctionLocationID],
	cast([AuctionID] as int) [AuctionID],
	cast([City] as nvarchar(100)) [City],
	cast([State] as nvarchar(50)) [State],
	cast([County] as nvarchar(100)) [County],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AuctionLocation_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionLocation_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionLocation_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionLocation_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionLocation_FromStg__dbt_tmp_temp_view"
    end


