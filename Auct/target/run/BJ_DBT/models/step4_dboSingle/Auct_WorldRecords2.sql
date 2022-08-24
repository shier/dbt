
  
  if object_id ('"dbo"."Auct_WorldRecords2__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WorldRecords2__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_WorldRecords2__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_WorldRecords2__dbt_tmp"
    end


   EXEC('create view dbo.Auct_WorldRecords2__dbt_tmp_temp_view as
    
Select
	cast([AuctionID] as numeric(18,0)) [AuctionID],
	cast([WorldRecordSales$Hagerty] as numeric(19,4)) [WorldRecordSales$Hagerty],
	cast([WorldRecordSales$sPortsCarmarket] as numeric(19,4)) [WorldRecordSales$sPortsCarmarket],
	cast([WorldRecordSalesPrice] as numeric(19,4)) [WorldRecordSalesPrice],
	cast([Lot#] as real) [Lot#],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([WorldRecordID] as int) [WorldRecordID] 
From stg.[Auct_WorldRecords2_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_WorldRecords2__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_WorldRecords2__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_WorldRecords2__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WorldRecords2__dbt_tmp_temp_view"
    end


