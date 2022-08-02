{% snapshot AH_ImportedregionMap_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='LocalregionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_ImportedregionMap_InterView]
{% endsnapshot %}