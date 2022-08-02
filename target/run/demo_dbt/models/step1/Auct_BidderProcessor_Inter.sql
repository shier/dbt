
  
  if object_id ('"stg"."Auct_BidderProcessor_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderProcessor_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderProcessor_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderProcessor_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderProcessor_Inter__dbt_tmp_temp_view as
    
Select
	[BidderProcessorID] [BidderProcessorID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ClassName] as nvarchar(4000)) [ClassName]
From stg.[Auct_BidderProcessor_Raw]
    ');

  CREATE TABLE "stg"."Auct_BidderProcessor_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderProcessor_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderProcessor_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderProcessor_Inter__dbt_tmp_temp_view"
    end


