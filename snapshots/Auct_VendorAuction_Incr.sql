{% snapshot Auct_VendorAuction_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='VendorAuctionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_VendorAuction_InterView]
{% endsnapshot %}