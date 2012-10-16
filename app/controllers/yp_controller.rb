require 'open-uri'

class YpController < ApplicationController

	def morn
		json_response = open("http://codemountain.com/api/students/am.json").read
		@am_students = JSON.parse(json_response)
	end

	def aft
		json_response = open("http://codemountain.com/api/students/pm.json").read
		@pm_students = JSON.parse(json_response)
	end

	def des
		json_response = open("http://codemountain.com/api/students/rfd.json").read
		@rfd_students = JSON.parse(json_response)
	end

end