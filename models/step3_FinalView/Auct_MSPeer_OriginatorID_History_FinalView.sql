{{ config(materialized='view',schema='stg')}}
Select
	[Originator_ID],[Originator_Publication],[Originator_Node],[Originator_Db],[Originator_Db_Version],[Originator_Version],[Inserted_Date] 
From stg.[Auct_MSPeer_OriginatorID_History_Incr] 
Where [dbt_valid_to] is null