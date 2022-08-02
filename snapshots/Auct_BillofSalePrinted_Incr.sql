{% snapshot Auct_BillofSalePrinted_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BlockSaleID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BillofSalePrinted_InterView]
{% endsnapshot %}