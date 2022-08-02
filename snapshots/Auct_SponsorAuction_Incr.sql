{% snapshot Auct_SponsorAuction_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SponsorAuctionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SponsorAuction_InterView]
{% endsnapshot %}