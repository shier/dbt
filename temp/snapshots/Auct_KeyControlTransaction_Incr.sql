{% snapshot Auct_KeyControlTransaction_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='KeyControlTransactionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_KeyControlTransaction_InterView]
{% endsnapshot %}