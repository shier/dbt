{{ config(materialized='table',schema='dbo')}}
Select
	cast([SettingName] as nvarchar(4000)) [SettingName],
	cast([SettingValue] as nvarchar(4000)) [SettingValue] 
From stg.[CC_Setting_FinalView]