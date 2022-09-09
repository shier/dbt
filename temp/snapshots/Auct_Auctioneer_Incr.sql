{% snapshot Auct_Auctioneer_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctioneerID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Auctioneer_InterView]
{% endsnapshot %}