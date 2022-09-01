create view "stg"."Auct_PaymentOverride_FinalView__dbt_tmp" as
    
Select
	[PaymentOverride_ID],[ConsignmentID],[ApproverUserID],[RequestUserID],[Description],[Created] 
From stg.[Auct_PaymentOverride_Incr] 
Where [dbt_valid_to] is null
