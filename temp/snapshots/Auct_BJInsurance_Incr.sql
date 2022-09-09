{% snapshot Auct_BJInsurance_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BJInsurance_InterView]
{% endsnapshot %}