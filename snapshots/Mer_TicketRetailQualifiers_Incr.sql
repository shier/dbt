{% snapshot Mer_TicketRetailQualifiers_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_TicketRetailQualifiers_InterView]
{% endsnapshot %}