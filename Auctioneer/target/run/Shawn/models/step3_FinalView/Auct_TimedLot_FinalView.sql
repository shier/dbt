create view "stg"."Auct_TimedLot_FinalView__dbt_tmp" as
    
Select
	[ConsignmentID],[TargetTime] 
From [Auct_TimedLot_Incr]
