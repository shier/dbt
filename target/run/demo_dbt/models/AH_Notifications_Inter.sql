
  
  if object_id ('"stg"."AH_Notifications_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Notifications_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Notifications_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Notifications_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Notifications_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	DetailID DetailID,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	QueuedDTTM Queueddttm,
	StatusDTTM Statusdttm,
	CreatedOn Createdon,
	cast(StatusMessage as nvarchar(4000)) StatusMessage,
	cast(Message as nvarchar(4000)) Message,
	cast(DetailType as nvarchar(4000)) DetailType,
	cast(ReplyToEmail as nvarchar(4000)) ReplytoEmail,
	cast(RecipientEmail as nvarchar(4000)) RecipientEmail,
	cast(CCEmail as nvarchar(4000)) CcEmail,
	cast(BCCEmail as nvarchar(4000)) BCcEmail,
	cast(SenderUserName as nvarchar(4000)) SEnderUserName,
	cast(ReceiverUserName as nvarchar(4000)) ReceiverUserName,
	cast(Template as nvarchar(4000)) Template,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Status as nvarchar(4000)) Status
From AH_Notifications_Raw
    ');

  CREATE TABLE "stg"."AH_Notifications_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Notifications_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Notifications_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Notifications_Inter__dbt_tmp_temp_view"
    end


