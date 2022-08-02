{% snapshot Auct_Dealerstat_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DealerstatID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Dealerstat_InterView]
{% endsnapshot %}