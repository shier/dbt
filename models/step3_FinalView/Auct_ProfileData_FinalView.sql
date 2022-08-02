{{ config(materialized='view',schema='stg')}}
Select
	[ProfileID],[BgColor],[WizardColor],[TextColor],[WizardText],[BidderPhoto],[UserTimeOut],[CustListall],[CustsumDisplay],[CustContact],[DefaultAuctionID],[PulseQueueID] 
From stg.[Auct_ProfileData_Incr] 
Where [dbt_valid_to] is null