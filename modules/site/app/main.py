import jinja2
import os
import webapp2

template_path = os.path.join(os.path.dirname(__file__), "templates")

jinja_environment = jinja2.Environment(
    loader=jinja2.FileSystemLoader(template_path),
    extensions=['jinja2.ext.autoescape'],
    autoescape=True)

class TestHandler(webapp2.RequestHandler):
    def get(self):
        template = jinja_environment.get_template('test.html')
        self.response.out.write(template.render(link='HELLO!!!'))

application = webapp2.WSGIApplication([
    ('/test', TestHandler)
], debug=True)
