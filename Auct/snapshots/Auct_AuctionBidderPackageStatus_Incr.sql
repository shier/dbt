{% snapshot Auct_AuctionBidderPackageStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctionBidderPackageStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionBidderPackageStatus_InterView]
{% endsnapshot %}