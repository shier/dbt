{% snapshot Auct_Auction_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Auction_InterView]
{% endsnapshot %}