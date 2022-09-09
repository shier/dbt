{% snapshot AH_NewSalestoInvoice_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='LineItemID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_NewSalestoInvoice_InterView]
{% endsnapshot %}