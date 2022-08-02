{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Loopback_Detection] as varchar), Cast([Queued_reinit] as varchar), Cast([ArtID] as varchar), Cast([SrvID] as varchar), [Dest_Db], Cast([Status] as varchar), Cast([Sync_Type] as varchar), [Login_Name], Cast([SubScription_Type] as varchar), Cast([Distribution_JobID] as varchar), Cast([TimeStamp] as varchar), Cast([Update_Mode] as varchar), Cast([NoSync_Type] as varchar), [SrvName])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysSubScriptions_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
