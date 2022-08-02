{% snapshot Auct_AuctionBidder_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctionBidderID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionBidder_InterView]
{% endsnapshot %}