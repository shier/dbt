{% snapshot Auct_SaleAdjustType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SaleAdjustTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SaleAdjustType_InterView]
{% endsnapshot %}