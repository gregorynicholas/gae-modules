# we should run gulp for each of the projects before deployment
# we should run unit tests and integration tests before deployment

gcloud preview app deploy \
	--project lofty-apex-852 \
	modules/site/dist/site.yaml \
	modules/admin/dist/admin.yaml \
	modules/api/api.yaml
