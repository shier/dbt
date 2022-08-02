
  
  if object_id ('"stg"."AH_Feedbacks_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Feedbacks_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Feedbacks_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Feedbacks_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Feedbacks_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[SendingUserId] [SEndingUserID],
	[ReceivingUserId] [ReceivINgUserID],
	[Rating] [Rating],
	[ListingId] [ListingID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateStamp] [DaTestamp],
	cast([Comment] as nvarchar(4000)) [Comment],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([ListingOwnerUsername] as nvarchar(4000)) [ListingOwnerUserName]
From stg.[AH_Feedbacks_Raw]
    ');

  CREATE TABLE "stg"."AH_Feedbacks_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Feedbacks_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Feedbacks_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Feedbacks_Inter__dbt_tmp_temp_view"
    end


