
  
  if object_id ('"dbo"."AH_ListingQuestions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingQuestions__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingQuestions__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingQuestions__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingQuestions__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID],
	cast([ListingID] as int) [ListingID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([Question] as nvarchar(4000)) [Question],
	cast([Answer] as nvarchar(4000)) [Answer] 
From stg.[AH_ListingQuestions_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ListingQuestions__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingQuestions__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingQuestions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingQuestions__dbt_tmp_temp_view"
    end


