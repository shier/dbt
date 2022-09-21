
  
  if object_id ('"dbo"."Auct_Booth__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Booth__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Booth__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Booth__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Booth__dbt_tmp_temp_view as
    
Select
	cast([BoothID] as int) [BOOTHID],
	cast([LocationID] as int) [LOCATIONID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AmpsRequired] as int) [AMPSREQUIRED],
	cast([VoltsRequired] as int) [VOLTSREQUIRED],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Booth_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Booth__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Booth__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Booth__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Booth__dbt_tmp_temp_view"
    end


