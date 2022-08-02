{% snapshot Auct_CarCredit_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarCreditID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarCredit_InterView]
{% endsnapshot %}