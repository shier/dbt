{% snapshot Auct_SparePartsType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SparePartsTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SparePartsType_InterView]
{% endsnapshot %}