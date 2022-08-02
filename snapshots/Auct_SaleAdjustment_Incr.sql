{% snapshot Auct_SaleAdjustment_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SaleAdjustmentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SaleAdjustment_InterView]
{% endsnapshot %}