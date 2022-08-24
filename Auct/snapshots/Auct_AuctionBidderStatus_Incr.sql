{% snapshot Auct_AuctionBidderStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionBidderStatus_InterView]
{% endsnapshot %}