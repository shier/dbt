{% snapshot Auct_ProfileData_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ProfileID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ProfileData_InterView]
{% endsnapshot %}