{{ config(materialized='view',schema='stg')}}
Select
	[USERPROFILEID] [UserProfileID],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	[AUCTIONID] [AuctionID],
	[SEARCHFORID] [SearchForID],
	[SEARCHBYID] [SearchByID],
	[DEFAULTCONSIGNMENTTYPE] [DefaultConsignmentType],
	[USERID] [UserID],
	[CURRENTTASKCOUNT] [CurrentTaskCount],
	[TASKINTERVAL] [Taskinterval],
	[PULSEQUEUEID] [PulseQueueID],
	cast([SEARCHCUSTOMERTEXT] as nvarchar(4000)) [SearchCustomerText],
	cast([SEARCHCONSIGNMENTTEXT] as nvarchar(4000)) [SearchConsignmentText],
	cast([SIGNATURE] as nvarchar(4000)) [Signature],
	[TASKAUTOUPDATE] [TaskautoUpdate],
	[TASKAUTOOPEN] [Taskautoopen],
	[TASKPLAYSOUND] [Taskplaysound]
From stg.[Auct_UserProfiles_Raw]
