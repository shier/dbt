{% snapshot Auct_Sale_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SaleID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Sale_InterView]
{% endsnapshot %}