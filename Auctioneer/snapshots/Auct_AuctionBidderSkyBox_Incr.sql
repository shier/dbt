{% snapshot Auct_AuctionBidderSkyBox_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SkyBoxTicketNumber',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionBidderSkyBox_InterView]
{% endsnapshot %}