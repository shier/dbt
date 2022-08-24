{% snapshot Auct_ChargeatSaleAuctionFeeType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FeeTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ChargeatSaleAuctionFeeType_InterView]
{% endsnapshot %}