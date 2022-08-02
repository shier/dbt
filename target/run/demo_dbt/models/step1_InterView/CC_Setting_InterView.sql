create view "stg"."CC_Setting_InterView__dbt_tmp" as
    
Select
	cast([SettingName] as nvarchar(4000)) [SettingName],
	cast([SettingValue] as nvarchar(4000)) [SettingValue]
From stg.[CC_Setting_Raw]
