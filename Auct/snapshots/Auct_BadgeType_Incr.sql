{% snapshot Auct_BadgeType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BadgeTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BadgeType_InterView]
{% endsnapshot %}