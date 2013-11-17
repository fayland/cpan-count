# deps

promise = require 'when'
request = require 'request'

# module!

count = (user) ->

	api = 'http://api.metacpan.org/v0/author/:user?join=release&q=release.status:latest'
	deferred = promise.defer()

	getUrl = (user = '') ->
		api.replace ':user', user

	# fetches repo count
	fetch = ->
		url = getUrl user
		request
			uri: url
		, process

	# process response
	process = (error, res, body) ->

		# hacky, as the API doesn't return proper HTTP status codes >:(
		if error or body.charAt(0) isnt '{'

			deferred.reject error or body

		else

			cpan = JSON.parse body

			if cpan.code and cpan.code == 404
				deferred.reject cpan.message
			else
				count = cpan.release.hits.total or 0
				deferred.resolve count

	# do it!
	fetch()

	# return
	deferred.promise

# export

module.exports = count