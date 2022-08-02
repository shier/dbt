
  
  if object_id ('"stg"."Auct_BidderStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderStatus_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderStatus_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderStatus_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderStatus_Inter__dbt_tmp_temp_view as
    
Select
	[BIDDERSTATUSID] [BidderStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[PROCESSORID] [ProcessorID],
	[ACTIVE] [Active],
	cast([PROCESSOR] as nvarchar(4000)) [Processor]
From stg.[Auct_BidderStatus_Raw]
    ');

  CREATE TABLE "stg"."Auct_BidderStatus_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderStatus_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderStatus_Inter__dbt_tmp_temp_view"
    end


