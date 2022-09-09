{% snapshot Auct_AuctioneerTest_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctioneerTestID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctioneerTest_InterView]
{% endsnapshot %}