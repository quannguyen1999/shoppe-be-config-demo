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


