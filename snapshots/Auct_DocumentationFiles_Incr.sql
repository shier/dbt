{% snapshot Auct_DocumentationFiles_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DocumentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DocumentationFiles_InterView]
{% endsnapshot %}