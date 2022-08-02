{% snapshot Auct_Automobilia_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AutomobiliaID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Automobilia_InterView]
{% endsnapshot %}