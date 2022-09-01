{% snapshot Auct_FeeType_Amenities_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FeeType_AmenityID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_FeeType_Amenities_InterView]
{% endsnapshot %}