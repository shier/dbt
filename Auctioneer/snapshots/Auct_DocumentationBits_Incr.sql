{% snapshot Auct_DocumentationBits_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DocumentationBitID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DocumentationBits_InterView]
{% endsnapshot %}