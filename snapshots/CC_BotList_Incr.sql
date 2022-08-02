{% snapshot CC_BotList_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BotListPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_BotList_InterView]
{% endsnapshot %}