get = require '../cpan-count'

exports.Cpan =

	success: (test) ->

		test.expect 1

		fn = (count) ->
			isMoreThan10 = count > 10
			test.equals isMoreThan10, true
			test.done()

		err = ->
			test.ok false
			test.done()

		get('FAYLAND').then fn, err

	error: (test) ->

		test.expect 1

		fn = ->
			test.ok true
			test.done()

		# username doesn't exist and should throw an error
		get('ajkldanjkndjklfndjfnjkdsnfjrnfjkdndjkvnifsdvnfjkvnsrifrifnsermnerjifnerjfnjr').then (->), fn, (->)