
  
  if object_id ('"dbo"."AH_Feedbacks__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Feedbacks__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Feedbacks__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Feedbacks__dbt_tmp"
    end


   EXEC('create view dbo.AH_Feedbacks__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([SEndingUserID] as int) [SEndingUserID],
	cast([ReceivINgUserID] as int) [ReceivINgUserID],
	cast([Rating] as int) [Rating],
	cast([ListingID] as int) [ListingID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DaTestamp] as datetime) [DaTestamp],
	cast([Comment] as nvarchar(4000)) [Comment],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([ListingOwnerUserName] as nvarchar(4000)) [ListingOwnerUserName] 
From stg.[AH_Feedbacks_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Feedbacks__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Feedbacks__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Feedbacks__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Feedbacks__dbt_tmp_temp_view"
    end


