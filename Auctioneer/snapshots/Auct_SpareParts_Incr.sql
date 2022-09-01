{% snapshot Auct_SpareParts_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SparePartsID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SpareParts_InterView]
{% endsnapshot %}