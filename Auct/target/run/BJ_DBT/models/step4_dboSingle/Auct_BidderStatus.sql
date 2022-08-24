
  
  if object_id ('"dbo"."Auct_BidderStatus__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderStatus__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BidderStatus__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BidderStatus__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BidderStatus__dbt_tmp_temp_view as
    
Select
	cast([BidderStatusID] as int) [BidderStatusID],
	cast([Name] as nvarchar(512)) [BidderStatus],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ProcessorID] as int) [ProcessorID],
	cast([Active] as bit) [IsActive],
	cast([Processor] as nvarchar(512)) [Processor] 
From stg.[Auct_BidderStatus_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BidderStatus__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BidderStatus__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BidderStatus__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderStatus__dbt_tmp_temp_view"
    end


