{% snapshot Auct_BidderBadge_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderBadgeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidderBadge_InterView]
{% endsnapshot %}