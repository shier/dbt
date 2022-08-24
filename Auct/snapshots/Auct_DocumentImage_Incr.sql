{% snapshot Auct_DocumentImage_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DocumentImageID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DocumentImage_InterView]
{% endsnapshot %}