create view "stg"."Mer_Loggingentries_FinalView__dbt_tmp" as
    
Select
	[ID],[Merchant_ID],[LogType],[Entry],[Add_Date] 
From stg.[Mer_Loggingentries_Incr] 
Where [dbt_valid_to] is null
