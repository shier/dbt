{% snapshot Auct_PaytoSeller_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PaytoSellerID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PaytoSeller_InterView]
{% endsnapshot %}