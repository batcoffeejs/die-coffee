#
#                     Error Routes
#
# =======================================================
#  Dependencies
# =======================================================

app = module.app = module.parent.app
# =======================================================
#  Controllers
# =======================================================

error = app.controller('error')
# =======================================================
#  Dependencies
# =======================================================

app.missing error.missing