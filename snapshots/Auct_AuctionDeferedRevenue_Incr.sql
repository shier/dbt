{% snapshot Auct_AuctionDeferedRevenue_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DeferedAuctionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionDeferedRevenue_InterView]
{% endsnapshot %}