{% snapshot AH_ImportedCategoryMap_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='LocalCategoryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_ImportedCategoryMap_InterView]
{% endsnapshot %}