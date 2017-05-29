#
#                  Project Configuration
#

module.exports = (app) ->
  # Create Safe Reference to the Environment Variable
  environment = if process.env.NODE_ENV then process.env.NODE_ENV.toLowerCase() else null
  
  # =======================================================
  #  Local
  # =======================================================
  if environment == 'local' or !environment
    return { host: 'http://localhost:8000' }

    # =======================================================
    #  Development
    # =======================================================
  else if environment == 'development' or environment == 'dev'
    return { host: 'http://localhost:8000' }
    
    # =======================================================
    #  Production 
    # =======================================================
  else if environment == 'production'
    return { host: 'http://test.com' }
  return