{{ config(materialized='view',schema='stg')}}
Select
	[SettingName],[SettingValue] 
From stg.[CC_Setting_Incr] 
Where [dbt_valid_to] is null