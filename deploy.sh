# run gulp for each of the projects before deployment
(cd modules/site && gulp)
(cd modules/admin && gulp)

# TODO: run unit tests and integration tests before deployment


# deploy to production
gcloud preview app deploy \
	--project lofty-apex-852 \
	modules/site/dist/site.yaml \
	modules/admin/dist/admin.yaml \
	modules/api/api.yaml
