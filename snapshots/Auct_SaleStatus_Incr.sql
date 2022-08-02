{% snapshot Auct_SaleStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SaleStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SaleStatus_InterView]
{% endsnapshot %}