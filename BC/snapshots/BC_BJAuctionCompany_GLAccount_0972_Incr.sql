{% snapshot BC_BJAuctionCompany_GLAccount_0972_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='No',
			check_cols='all'
		)
	}}
	SELECT * from stg.[BC_BJAuctionCompany_GLAccount_0972_InterView]
{% endsnapshot %}