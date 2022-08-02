{% snapshot AH_PaymentConfigurationTable_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_PaymentConfigurationTable_InterView]
{% endsnapshot %}