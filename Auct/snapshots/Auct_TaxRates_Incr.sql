{% snapshot Auct_TaxRates_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TaxRatesID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_TaxRates_InterView]
{% endsnapshot %}