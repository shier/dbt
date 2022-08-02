{% snapshot Mer_ShopifyProductImages_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_ShopifyProductImages_InterView]
{% endsnapshot %}