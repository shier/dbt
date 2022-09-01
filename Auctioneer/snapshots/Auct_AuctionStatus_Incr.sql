{% snapshot Auct_AuctionStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctionStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionStatus_InterView]
{% endsnapshot %}