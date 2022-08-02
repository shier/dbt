{% snapshot Mer_Categorystuff_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='Column1',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_Categorystuff_InterView]
{% endsnapshot %}