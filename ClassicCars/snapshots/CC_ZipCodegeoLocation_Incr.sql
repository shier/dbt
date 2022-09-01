{% snapshot CC_ZipCodegeoLocation_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_ZipCodegeoLocation_InterView]
{% endsnapshot %}