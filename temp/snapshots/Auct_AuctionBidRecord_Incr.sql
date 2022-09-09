{% snapshot Auct_AuctionBidRecord_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctionBidRecordID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionBidRecord_InterView]
{% endsnapshot %}