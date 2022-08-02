{% snapshot Mer_ShopifyProducts_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_ShopifyProducts_InterView]
{% endsnapshot %}