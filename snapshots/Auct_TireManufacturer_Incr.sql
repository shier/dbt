{% snapshot Auct_TireManufacturer_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TireManufacturerID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_TireManufacturer_InterView]
{% endsnapshot %}