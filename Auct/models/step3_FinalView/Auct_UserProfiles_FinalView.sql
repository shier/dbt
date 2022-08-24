{{ config(materialized='view',schema='stg')}}
Select
	[UserProfileID],[UserName],[AuctionID],[SearchForID],[SearchByID],[DefaultConsignmentType],[UserID],[CurrentTaskCount],[Taskinterval],[PulseQueueID],[SearchCustomerText],[SearchConsignmentText],[Signature],[TaskautoUpdate],[Taskautoopen],[Taskplaysound] 
From stg.[Auct_UserProfiles_Incr] 
Where [dbt_valid_to] is null