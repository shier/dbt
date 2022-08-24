create view "stg"."Auct_TimedLot_InterView__dbt_tmp" as
    
Select
	[CONSIGNMENTID] [ConsignmentID],
	[TARGETTIME] [TargetTime]
From stg.[Auct_TimedLot_Raw]
