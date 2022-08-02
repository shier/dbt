
  
  if object_id ('"stg"."AH_ListingQuestions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingQuestions_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingQuestions_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ListingQuestions_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ListingQuestions_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	UserId UserID,
	ListingId ListingID,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	CreatedOn Createdon,
	cast(UserName as nvarchar(4000)) UserName,
	cast(Question as nvarchar(4000)) Question,
	cast(Answer as nvarchar(4000)) Answer
From AH_ListingQuestions_Raw
    ');

  CREATE TABLE "stg"."AH_ListingQuestions_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingQuestions_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ListingQuestions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingQuestions_Inter__dbt_tmp_temp_view"
    end


