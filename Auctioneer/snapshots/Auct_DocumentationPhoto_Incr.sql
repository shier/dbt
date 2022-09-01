{% snapshot Auct_DocumentationPhoto_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DocumentationPhotoID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DocumentationPhoto_InterView]
{% endsnapshot %}