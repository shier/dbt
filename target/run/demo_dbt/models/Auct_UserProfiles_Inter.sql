
  
  if object_id ('"stg"."Auct_UserProfiles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UserProfiles_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_UserProfiles_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_UserProfiles_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_UserProfiles_Inter__dbt_tmp_temp_view as
    
Select
	USERID UserID,
	CURRENTTASKCOUNT CurrentTaskCount,
	TASKINTERVAL Taskinterval,
	PULSEQUEUEID PulseQueueID,
	USERPROFILEID UserProfileID,
	AUCTIONID AuctionID,
	SEARCHFORID SearchForID,
	SEARCHBYID SearchByID,
	DEFAULTCONSIGNMENTTYPE DefaultConsignmentType,
	TASKPLAYSOUND Taskplaysound,
	TASKAUTOUPDATE TaskautoUpdate,
	TASKAUTOOPEN Taskautoopen,
	cast(SEARCHCUSTOMERTEXT as nvarchar(4000)) SearchCustomerText,
	cast(SEARCHCONSIGNMENTTEXT as nvarchar(4000)) SearchConsignmentText,
	cast(SIGNATURE as nvarchar(4000)) Signature,
	cast(USERNAME as nvarchar(4000)) UserName
From Auct_UserProfiles_Raw
    ');

  CREATE TABLE "stg"."Auct_UserProfiles_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_UserProfiles_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_UserProfiles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UserProfiles_Inter__dbt_tmp_temp_view"
    end


