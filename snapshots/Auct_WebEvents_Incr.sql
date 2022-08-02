{% snapshot Auct_WebEvents_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='EventID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_WebEvents_InterView]
{% endsnapshot %}