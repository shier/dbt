{% snapshot Auct_PackageCarrier_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PackageCarrierID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PackageCarrier_InterView]
{% endsnapshot %}