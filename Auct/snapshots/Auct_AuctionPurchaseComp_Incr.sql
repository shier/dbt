{% snapshot Auct_AuctionPurchaseComp_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PurchaseAuctionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionPurchaseComp_InterView]
{% endsnapshot %}