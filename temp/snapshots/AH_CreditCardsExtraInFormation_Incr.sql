{% snapshot AH_CreditCardsExtraInFormation_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_CreditCardsExtraInFormation_InterView]
{% endsnapshot %}