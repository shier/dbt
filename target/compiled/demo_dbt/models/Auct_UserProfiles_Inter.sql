
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