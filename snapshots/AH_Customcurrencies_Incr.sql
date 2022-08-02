{% snapshot AH_Customcurrencies_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_Customcurrencies_InterView]
{% endsnapshot %}