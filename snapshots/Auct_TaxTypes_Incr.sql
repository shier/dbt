{% snapshot Auct_TaxTypes_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TaxTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_TaxTypes_InterView]
{% endsnapshot %}