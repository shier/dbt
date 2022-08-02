{% snapshot Auct_PropertyTransaction_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PropertyTransactionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PropertyTransaction_InterView]
{% endsnapshot %}