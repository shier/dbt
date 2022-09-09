create view "stg"."Auct_SysTranschEMAs_FinalView__dbt_tmp" as
    
Select
	[TaBID],[Startlsn],[Endlsn],[TypeID] 
From [Auct_SysTranschEMAs_Incr] 
Where [dbt_valid_to] is null
