{% snapshot Auct_SaleHistory_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SaleID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SaleHistory_InterView]
{% endsnapshot %}