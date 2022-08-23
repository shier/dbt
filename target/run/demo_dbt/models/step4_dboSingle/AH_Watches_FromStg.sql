
  
  if object_id ('"dbo"."AH_Watches_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Watches_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Watches_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Watches_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_Watches_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID],
	cast([ListingID] as int) [ListingID],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser] 
From stg.[AH_Watches_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Watches_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Watches_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Watches_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Watches_FromStg__dbt_tmp_temp_view"
    end


