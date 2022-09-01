
  
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
	cast([BusinessUnitID] as int) [BusinessUnitID],
	cast([BusinessUnit] as nvarchar(4000)) [BusinessUnit],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([County] as nvarchar(4000)) [County],
	cast([BusinessUnitDisplay] as nvarchar(4000)) [BusinessUnitDisplay],
	cast([Created] as DATETIME) [Created] 
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


