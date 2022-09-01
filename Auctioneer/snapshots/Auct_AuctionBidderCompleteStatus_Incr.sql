{% snapshot Auct_AuctionBidderCompleteStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctionBidderCompleteStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionBidderCompleteStatus_InterView]
{% endsnapshot %}