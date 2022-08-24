{% snapshot Auct_NavPull_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_NavPull_InterView]
{% endsnapshot %}