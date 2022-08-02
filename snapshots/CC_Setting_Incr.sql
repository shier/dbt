{% snapshot CC_Setting_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SettingName',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_Setting_InterView]
{% endsnapshot %}