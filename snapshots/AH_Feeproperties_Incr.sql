{% snapshot AH_Feeproperties_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_Feeproperties_InterView]
{% endsnapshot %}