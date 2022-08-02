
Select
	[ID],[Originator_lsn],[Originator_Publication],[Originator],[Originator_Db],[Originator_Publication_ID],[Originator_Db_Version],[Originator_Version],[Originator_ID],[Last_Updated] 
From stg.[Auct_lsns_Incr] 
Where [dbt_valid_to] is null