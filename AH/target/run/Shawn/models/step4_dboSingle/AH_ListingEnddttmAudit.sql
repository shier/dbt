
  
  if object_id ('"dbo"."AH_ListingEnddttmAudit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingEnddttmAudit__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingEnddttmAudit__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingEnddttmAudit__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingEnddttmAudit__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([SqlDaTestamp] as datetime) [SqlDaTestamp],
	cast([Enddttm] as datetime) [Enddttm],
	cast([SourceListingID] as int) [SourceListingID],
	cast([ListingID] as int) [ListingID],
	cast([Origin] as nvarchar(4000)) [Origin] 
From stg.[AH_ListingEnddttmAudit_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ListingEnddttmAudit__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingEnddttmAudit__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingEnddttmAudit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingEnddttmAudit__dbt_tmp_temp_view"
    end


