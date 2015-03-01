# gae-modules

This is a simple proof of concept to understand how Google App Engine modules work and how they could be used to collapse multiple applications into a single app engine instance.

For demo purposes, the following demo apps are used:

* /modules/admin - [Web Starter Kit](https://developers.google.com/web/starter-kit/)
* /modules/site - [Web Starter Kit](https://developers.google.com/web/starter-kit/)
* /modules/api - Simple flask-based API based on this [article](http://blog.miguelgrinberg.com/post/designing-a-restful-api-with-python-and-flask)

## Installation

* For /modules/site and /modules/admin follow the setup guide in the [docs/install.md](modules/site/docs/install.md)
* For /modules/api run the [install.sh](modules/api/install.sh)

## You can see the app deployed here:

* Site module (default): [http://lofty-apex-852.appspot.com/](http://lofty-apex-852.appspot.com/)
* Admin module: [http://admin.lofty-apex-852.appspot.com/](http://admin.lofty-apex-852.appspot.com/)
* API module: [http://api.lofty-apex-852.appspot.com/todo/api/v1.0/tasks](http://api.lofty-apex-852.appspot.com/todo/api/v1.0/tasks)

### Considerations

* When you have multiple app engines/repos it is easy to determine which "modules" have changes that need to be deployed.  Once you collapse all of the applications into a single app engine it becomes _harder_ to determine which modules to deploy.  Either you are deploying all of the applications as a set to ensure they are compatible or you need to inspect commits against a directory tree to determine which modules should be deployed.
* Since the local appserver does not support host-based routing, the local dev server behaves differently than the deployed version.  In order work locally and use some type of hostname rather than localhost:port one would need to route local requests that match a host name to the localhost port that each module is running on.  Something like [this] could be used.
* Need to validate configuration with custom domain and wildcard SSL cert


