
  
  if object_id ('"dbo"."Auct_UserProfiles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserProfiles__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UserProfiles__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UserProfiles__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UserProfiles__dbt_tmp_temp_view as
    
Select
	cast([UserProfileID] as int) [USERPROFILEID],
	cast([UserName] as nvarchar(4000)) [USERNAME],
	cast([AuctionID] as int) [AUCTIONID],
	cast([SearchForID] as int) [SEARCHFORID],
	cast([SearchByID] as int) [SEARCHBYID],
	cast([DefaultConsignmentType] as int) [DEFAULTCONSIGNMENTTYPE],
	cast([UserID] as int) [USERID],
	cast([CurrentTaskCount] as int) [CURRENTTASKCOUNT],
	cast([Taskinterval] as int) [TASKINTERVAL],
	cast([PulseQueueID] as int) [PULSEQUEUEID],
	cast([SearchCustomerText] as nvarchar(4000)) [SEARCHCUSTOMERTEXT],
	cast([SearchConsignmentText] as nvarchar(4000)) [SEARCHCONSIGNMENTTEXT],
	cast([Signature] as nvarchar(4000)) [SIGNATURE],
	cast([TaskautoUpdate] as bit) [TASKAUTOUPDATE],
	cast([Taskautoopen] as bit) [TASKAUTOOPEN],
	cast([Taskplaysound] as bit) [TASKPLAYSOUND] 
From stg.[Auct_UserProfiles_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UserProfiles__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UserProfiles__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UserProfiles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserProfiles__dbt_tmp_temp_view"
    end


