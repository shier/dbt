
  
  if object_id ('"dbo"."Auct_NavPulLog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavPulLog__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavPulLog__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavPulLog__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavPulLog__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([ProcessDate] as nvarchar(4000)) [ProcessDate],
	cast([RecsProcessed] as int) [RecsProcessed],
	cast([Status] as int) [Status],
	cast([AuctionID] as int) [AuctionID],
	cast([Created] as datetime) [Created] 
From stg.[Auct_NavPulLog_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NavPulLog__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavPulLog__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavPulLog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavPulLog__dbt_tmp_temp_view"
    end


