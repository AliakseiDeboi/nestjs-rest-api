IMAGE="localhost:5000/lab_3:latest"
docker login --username $LOCAL_ARTIFACTORY_USER --password $LOCAL_ARTIFACTORY_PASS $LOCAL_ARTIFACTORY_REPOSITORY
docker rmi $IMAGE || true
docker build --tag $IMAGE_TAG .
docker push $IMAGE_TAG
