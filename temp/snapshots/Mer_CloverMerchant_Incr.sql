{% snapshot Mer_CloverMerchant_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MerchantID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_CloverMerchant_InterView]
{% endsnapshot %}