
Select
	[PaymentOverride_ID],[Description],[ConsignmentID],[ApproverUserID],[RequestUserID],[Created] 
From stg.[Auct_PaymentOverride_Incr] 
Where [dbt_valid_to] is null