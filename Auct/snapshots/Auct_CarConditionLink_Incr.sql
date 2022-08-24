{% snapshot Auct_CarConditionLink_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarConditionLinkID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarConditionLink_InterView]
{% endsnapshot %}