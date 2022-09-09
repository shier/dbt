{% snapshot Auct_SponsorDueDates_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SponsorDueDatesID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SponsorDueDates_InterView]
{% endsnapshot %}