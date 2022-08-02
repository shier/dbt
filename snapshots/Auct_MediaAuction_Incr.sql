{% snapshot Auct_MediaAuction_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MediaAuctionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaAuction_InterView]
{% endsnapshot %}