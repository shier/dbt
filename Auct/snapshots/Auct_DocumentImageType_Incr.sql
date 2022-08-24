{% snapshot Auct_DocumentImageType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DocumentImageTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DocumentImageType_InterView]
{% endsnapshot %}