
  
  if object_id ('"dbo"."AH_Notifications_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Notifications_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Notifications_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Notifications_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_Notifications_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([DetailID] as int) [DetailID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Queueddttm] as datetime) [Queueddttm],
	cast([Statusdttm] as datetime) [Statusdttm],
	cast([RecipientEmail] as nvarchar(4000)) [RecipientEmail],
	cast([CcEmail] as nvarchar(4000)) [CcEmail],
	cast([BCcEmail] as nvarchar(4000)) [BCcEmail],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Status] as nvarchar(4000)) [Status],
	cast([StatusMessage] as nvarchar(4000)) [StatusMessage],
	cast([Message] as nvarchar(4000)) [Message],
	cast([DetailType] as nvarchar(4000)) [DetailType],
	cast([ReplytoEmail] as nvarchar(4000)) [ReplytoEmail],
	cast([SEnderUserName] as nvarchar(4000)) [SEnderUserName],
	cast([ReceiverUserName] as nvarchar(4000)) [ReceiverUserName],
	cast([Template] as nvarchar(4000)) [Template] 
From stg.[AH_Notifications_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Notifications_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Notifications_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Notifications_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Notifications_FromStg__dbt_tmp_temp_view"
    end


