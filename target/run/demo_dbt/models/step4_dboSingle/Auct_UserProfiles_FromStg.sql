
  
  if object_id ('"dbo"."Auct_UserProfiles_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserProfiles_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UserProfiles_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UserProfiles_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UserProfiles_FromStg__dbt_tmp_temp_view as
    
Select
	cast([UserProfileID] as int) [UserProfileID],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([AuctionID] as int) [AuctionID],
	cast([SearchForID] as int) [SearchForID],
	cast([SearchByID] as int) [SearchByID],
	cast([DefaultConsignmentType] as int) [DefaultConsignmentType],
	cast([UserID] as int) [UserID],
	cast([CurrentTaskCount] as int) [CurrentTaskCount],
	cast([Taskinterval] as int) [Taskinterval],
	cast([PulseQueueID] as int) [PulseQueueID],
	cast([SearchCustomerText] as nvarchar(4000)) [SearchCustomerText],
	cast([SearchConsignmentText] as nvarchar(4000)) [SearchConsignmentText],
	cast([Signature] as nvarchar(4000)) [Signature],
	cast([TaskautoUpdate] as bit) [TaskautoUpdate],
	cast([Taskautoopen] as bit) [Taskautoopen],
	cast([Taskplaysound] as bit) [Taskplaysound] 
From stg.[Auct_UserProfiles_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UserProfiles_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UserProfiles_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UserProfiles_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserProfiles_FromStg__dbt_tmp_temp_view"
    end


