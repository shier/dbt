{% snapshot Mer_NavShopifyTaxglno_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='State',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_NavShopifyTaxglno_InterView]
{% endsnapshot %}