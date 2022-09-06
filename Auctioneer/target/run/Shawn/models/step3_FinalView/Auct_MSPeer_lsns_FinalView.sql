create view "stg"."Auct_MSPeer_lsns_FinalView__dbt_tmp" as
    
Select
	[ID],[Last_Updated],[Originator],[Originator_Db],[Originator_Publication],[Originator_Publication_ID],[Originator_Db_Version],[Originator_lsn],[Originator_Version],[Originator_ID] 
From stg.[Auct_MSPeer_lsns_Incr] 
Where [dbt_valid_to] is null
