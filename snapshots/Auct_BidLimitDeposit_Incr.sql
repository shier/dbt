{% snapshot Auct_BidLimitDeposit_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidLimitDepositID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidLimitDeposit_InterView]
{% endsnapshot %}