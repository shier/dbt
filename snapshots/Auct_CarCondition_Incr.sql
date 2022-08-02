{% snapshot Auct_CarCondition_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarConditionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarCondition_InterView]
{% endsnapshot %}