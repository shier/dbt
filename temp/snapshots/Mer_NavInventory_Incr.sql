{% snapshot Mer_NavInventory_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SKU',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_NavInventory_InterView]
{% endsnapshot %}