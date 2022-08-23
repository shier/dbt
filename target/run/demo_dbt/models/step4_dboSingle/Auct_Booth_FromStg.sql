
  
  if object_id ('"dbo"."Auct_Booth_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Booth_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Booth_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Booth_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Booth_FromStg__dbt_tmp_temp_view as
    
Select
	cast([BoothID] as int) [BoothID],
	cast([LocationID] as int) [LocationID],
	cast([AuctionID] as int) [AuctionID],
	cast([AmpsRequired] as int) [AmpsRequired],
	cast([VoltsRequired] as int) [VoltsRequired],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Booth_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Booth_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Booth_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Booth_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Booth_FromStg__dbt_tmp_temp_view"
    end


