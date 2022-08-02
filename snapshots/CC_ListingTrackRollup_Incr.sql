{% snapshot CC_ListingTrackRollup_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ListingID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_ListingTrackRollup_InterView]
{% endsnapshot %}