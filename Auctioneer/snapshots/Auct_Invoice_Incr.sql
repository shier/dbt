{% snapshot Auct_Invoice_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='InvoiceID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Invoice_InterView]
{% endsnapshot %}