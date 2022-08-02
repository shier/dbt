{% snapshot Auct_ItemTaxType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ItemTaxTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ItemTaxType_InterView]
{% endsnapshot %}