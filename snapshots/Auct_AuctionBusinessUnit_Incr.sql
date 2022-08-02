{% snapshot Auct_AuctionBusinessUnit_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BusinessUnitID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionBusinessUnit_InterView]
{% endsnapshot %}