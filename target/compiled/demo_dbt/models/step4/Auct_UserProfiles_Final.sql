
Select
	[UserProfileID],[UserID],[CurrentTaskCount],[Taskinterval],[PulseQueueID],[AuctionID],[SearchForID],[SearchByID],[DefaultConsignmentType],[Taskplaysound],[TaskautoUpdate],[Taskautoopen],[SearchCustomerText],[SearchConsignmentText],[Signature],[UserName] 
From stg.[Auct_UserProfiles_Incr] 
Where [dbt_valid_to] is null