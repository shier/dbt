{% snapshot Auct_TaxLookup_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='LookupID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_TaxLookup_InterView]
{% endsnapshot %}