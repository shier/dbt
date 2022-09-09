{% snapshot Auct_AuctionCompany_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuctionCompanyID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionCompany_InterView]
{% endsnapshot %}