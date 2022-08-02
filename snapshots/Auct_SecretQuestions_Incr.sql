{% snapshot Auct_SecretQuestions_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='QuestionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SecretQuestions_InterView]
{% endsnapshot %}