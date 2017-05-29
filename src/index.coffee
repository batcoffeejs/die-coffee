#
#                      Project Index
#
# =======================================================
#  Require Diet
# =======================================================
server = require('diet')

# =======================================================
#  Create Server
# =======================================================
app = module.app = server()
app.config = require('./config')(app)
app.listen app.config.host

# =======================================================
#  View Engine
# =======================================================
ect = require('ect')(
  root: app.path + '/views/html/'
  open: '{{'
  close: '}}'
  cache: true
  watch: true
  gzip: true
  ext: '.html')
app.view 'html', ect.render

# =======================================================
#  Static Files
# ======================================================= 
fstatic = require('diet-static')(path: app.path + '/views/')
app.view 'file', fstatic

# =======================================================
#  Cookies
# =======================================================
cookies = require('diet-cookies')
app.header cookies

# =======================================================
#  Initialize Models & Routes
# =======================================================
require('./models') ->
  require './routes'
  return