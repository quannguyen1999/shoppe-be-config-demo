# shoppe-be-config-demo

# Option 1
# Run docker
# Step 0 run file jar
mvn install -DskipTests -Dmaven.test.skip=true

# Step 1 build
docker build . -t quannguyen1999/shopee-be-config-demo
> or
mvn spring-boot:build-image (reject - buildpack to slow)
> or 
mvn compile jib:dockerBuild (use this - google job fastest)

# Step 2 run
docker run -d -p 8071:8071 quannguyen1999/shopee-be-config-demo
> or to get log   
docker run --name shopee-config -p 8071:8071 quannguyen1999/shopee-be-config-demo

