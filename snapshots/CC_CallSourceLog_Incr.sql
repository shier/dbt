{% snapshot CC_CallSourceLog_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CallSourceLogPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_CallSourceLog_InterView]
{% endsnapshot %}