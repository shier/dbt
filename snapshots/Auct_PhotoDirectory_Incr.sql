{% snapshot Auct_PhotoDirectory_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PhotoDirectoryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PhotoDirectory_InterView]
{% endsnapshot %}