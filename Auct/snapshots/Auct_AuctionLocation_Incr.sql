{% snapshot Auct_AuctionLocation_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctionLocationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionLocation_InterView]
{% endsnapshot %}