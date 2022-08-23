
  
  if object_id ('"dbo"."CC_Notification_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Notification_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Notification_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Notification_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_Notification_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([UserID] as int) [UserID],
	cast([DeviceID] as nvarchar(4000)) [DeviceID] 
From stg.[CC_Notification_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Notification_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Notification_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Notification_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Notification_FromStg__dbt_tmp_temp_view"
    end


