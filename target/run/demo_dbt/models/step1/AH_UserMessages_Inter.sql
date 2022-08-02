
  
  if object_id ('"stg"."AH_UserMessages_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_UserMessages_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_UserMessages_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_UserMessages_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_UserMessages_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[SenderId] [SEnderID],
	[RecipientId] [RecipientID],
	[MasterMessageId] [MasTerMessageID],
	[ListingId] [ListingID],
	[Sent] [Sent],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([Subject] as nvarchar(4000)) [SuBJect],
	cast([Body] as nvarchar(4000)) [Body],
	cast([SenderStatus] as nvarchar(4000)) [SEnderStatus],
	cast([RecipientStatus] as nvarchar(4000)) [RecipientStatus],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_UserMessages_Raw]
    ');

  CREATE TABLE "stg"."AH_UserMessages_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_UserMessages_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_UserMessages_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_UserMessages_Inter__dbt_tmp_temp_view"
    end


