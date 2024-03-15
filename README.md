# shoppe-be-config-demo
# Run docker
# Step 0 run file jar
mvn install -DskipTests -Dmaven.test.skip=true

# Step 1 build
docker build . -t quannguyen1999/shopee-be-config-demo
# or
mvn spring-boot:build-image (reject - buildpack to slow - #TODO had bug)
# or 
mvn compile jib:dockerBuild (use this - google job fastest - #TODO had bug)

# Step 2 run
docker run -d -p 8071:8071 quannguyen1999/shopee-be-config-demo
# or to get log   
docker run --name shopee-be-config-demo -p 8071:8071 quannguyen1999/shopee-be-config-demo

Access: http://localhost:8071


# Link Dashboard import jvm micrometer:
https://grafana.com/grafana/dashboards/4701-jvm-micrometer/

# Link access k8s
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/workloads?namespace=default

# run
kubectl apply -f <each file k8s>

# delete + stop 
kubectl delete -f <each file k8s>

# install helm
brew install helm

# install package 
helm dependencies build


