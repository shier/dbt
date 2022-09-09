{% snapshot Auct_Clip_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ClipID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Clip_InterView]
{% endsnapshot %}