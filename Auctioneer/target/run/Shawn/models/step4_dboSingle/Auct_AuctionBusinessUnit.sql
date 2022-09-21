
  
  if object_id ('"dbo"."Auct_AuctionBusinessUnit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBusinessUnit__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionBusinessUnit__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionBusinessUnit__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionBusinessUnit__dbt_tmp_temp_view as
    
Select
	cast([BusinessUnitID] as int) [BUSINESSUNITID],
	cast([BusinessUnit] as nvarchar(4000)) [BUSINESSUNIT],
	cast([City] as nvarchar(4000)) [CITY],
	cast([State] as nvarchar(4000)) [STATE],
	cast([County] as nvarchar(4000)) [COUNTY],
	cast([BusinessUnitDisplay] as nvarchar(4000)) [BUSINESSUNITDISPLAY],
	cast([Created] as DATETIME) [CREATED] 
From stg.[Auct_AuctionBusinessUnit_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionBusinessUnit__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionBusinessUnit__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionBusinessUnit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBusinessUnit__dbt_tmp_temp_view"
    end


