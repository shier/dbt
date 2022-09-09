{% snapshot Auct_DepartmentChargePayment_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DepartmentChargePaymentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DepartmentChargePayment_InterView]
{% endsnapshot %}