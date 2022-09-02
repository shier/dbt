create view "stg"."CC_Setting_FinalView__dbt_tmp" as
    
Select
	[SettingName],[SettingValue] 
From stg.[CC_Setting_Incr] 
Where [dbt_valid_to] is null
