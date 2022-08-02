{% snapshot Auct_BidderBadgeImage_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderBadgeImageID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidderBadgeImage_InterView]
{% endsnapshot %}