{% snapshot CC_ListingAutohunterNominations_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_ListingAutohunterNominations_InterView]
{% endsnapshot %}