
Select
	[Originator_ID],[Originator_Db],[Inserted_Date],[Originator_Db_Version],[Originator_Version],[Originator_Publication],[Originator_Node] 
From stg.[Auct_OriginatorID_Incr] 
Where [dbt_valid_to] is null