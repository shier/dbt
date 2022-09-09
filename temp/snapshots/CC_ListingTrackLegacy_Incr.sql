{% snapshot CC_ListingTrackLegacy_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ListingID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_ListingTrackLegacy_InterView]
{% endsnapshot %}