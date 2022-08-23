
  
  if object_id ('"dbo"."Auct_WorldRecords_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WorldRecords_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_WorldRecords_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_WorldRecords_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_WorldRecords_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Wrsp] as numeric(18,2)) [Wrsp],
	cast([LotNumber] as numeric(18,2)) [LotNumber],
	cast([Wrsh] as numeric(18,2)) [Wrsh],
	cast([Wrsscm] as numeric(18,2)) [Wrsscm],
	cast([AuctionID] as int) [AuctionID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([Created] as datetime) [Created] 
From stg.[Auct_WorldRecords_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_WorldRecords_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_WorldRecords_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_WorldRecords_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WorldRecords_FromStg__dbt_tmp_temp_view"
    end


