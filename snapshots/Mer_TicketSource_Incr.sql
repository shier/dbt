{% snapshot Mer_TicketSource_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SourceID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_TicketSource_InterView]
{% endsnapshot %}