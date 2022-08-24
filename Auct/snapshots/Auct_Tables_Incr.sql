{% snapshot Auct_Tables_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TableID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Tables_InterView]
{% endsnapshot %}