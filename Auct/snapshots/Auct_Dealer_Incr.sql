{% snapshot Auct_Dealer_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DealerID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Dealer_InterView]
{% endsnapshot %}