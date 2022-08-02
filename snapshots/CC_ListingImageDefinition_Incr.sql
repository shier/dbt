{% snapshot CC_ListingImageDefinition_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ListingImageDefinitionPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_ListingImageDefinition_InterView]
{% endsnapshot %}