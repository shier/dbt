{% snapshot Mer_ShopifyInventoryLevels_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='InventoryItemID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_ShopifyInventoryLevels_InterView]
{% endsnapshot %}