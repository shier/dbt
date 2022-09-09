{% snapshot Auct_AuctionTypeBits_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctionTypeBit',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionTypeBits_InterView]
{% endsnapshot %}