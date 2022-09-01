{% snapshot Auct_AutomobiliaCondition_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AutomobiliaConditionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AutomobiliaCondition_InterView]
{% endsnapshot %}