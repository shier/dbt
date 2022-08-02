
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UserID as varchar), Cast(CurrentTaskCount as varchar), Cast(Taskinterval as varchar), Cast(PulseQueueID as varchar), Cast(AuctionID as varchar), Cast(SearchForID as varchar), Cast(SearchByID as varchar), Cast(DefaultConsignmentType as varchar), Cast(Taskplaysound as varchar), Cast(TaskautoUpdate as varchar), Cast(Taskautoopen as varchar), SearchCustomerText, SearchConsignmentText, Signature, UserName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UserProfiles_Inter]
	)
Select * From hashData
