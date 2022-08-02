{% snapshot Auct_FeePayer_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FeePayerID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_FeePayer_InterView]
{% endsnapshot %}