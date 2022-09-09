{% snapshot Auct_ProxiBidAuction_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ProxiBidAuctionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ProxiBidAuction_InterView]
{% endsnapshot %}