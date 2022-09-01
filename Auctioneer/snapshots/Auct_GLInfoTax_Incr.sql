{% snapshot Auct_GLInfoTax_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='GLInfoTaxID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_GLInfoTax_InterView]
{% endsnapshot %}