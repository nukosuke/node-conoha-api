module.exports = class ConoHa
  ServiceClass = require './service'  

  # identityService: URL of IdentityService
  # auth: Object contains authenticate information
  constructor: (@identityServiceEndpoint, @auth) ->
    @request  = require 'request'
    @services = {}

  getService: (serviceName) ->
    @services[serviceName] ||= new ServiceClass[serviceName]?(@)
