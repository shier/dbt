{% snapshot Auct_NavPulLog_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_NavPulLog_InterView]
{% endsnapshot %}