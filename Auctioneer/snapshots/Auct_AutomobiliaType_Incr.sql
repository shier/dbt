{% snapshot Auct_AutomobiliaType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AutomobiliaTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AutomobiliaType_InterView]
{% endsnapshot %}