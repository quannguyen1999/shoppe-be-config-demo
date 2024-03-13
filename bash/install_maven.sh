# Navigate into the accounts directory and run Maven install
# shellcheck disable=SC2164
# Define an array containing the folder names
folders=(
  "shopee-be-account-demo"
  "shopee-be-admin-demo"
  "shopee-be-config-demo"
  "shopee-be-eureka-demo"
  "shopee-be-gateway-demo"
  "shopee-be-email-demo"
)

echo "move one step folder folder"
cd ../

# Install Library + Jar
echo "Start Install File Jar"
for folder in "${folders[@]}"; do
    echo "Executing mvn clean install in $folder folder..."
    cd "../$folder"  # Change directory to the folder
    mvn install -DskipTests -Dmaven.test.skip=true
    echo "Done with $folder folder."
done
echo "End Install File Jar"

# Install Docker Image
echo "Start Install Docker image Jar"
for folder in "${folders[@]}"; do
    echo "Executing docker build . -t quannguyen1999/$folder folder..."
    cd "../$folder"  # Change directory to the folder
    docker build . -t quannguyen1999/$folder
    echo "Done with $folder folder."
done
echo "End Install Docker image Jar"




#
#cd ../shopee-be-account-demo
#echo "Running Maven install in shopee-be-account-demo directory..."
#mvn install -DskipTests -Dmaven.test.skip=true
#
#cd ../shopee-be-admin-demo
#echo "Running Maven install in shopee-be-admin-demo directory..."
#mvn install -DskipTests -Dmaven.test.skip=true
#
#cd ../shopee-be-config-demo
#echo "Running Maven install in shopee-be-config-demo directory..."
#mvn install -DskipTests -Dmaven.test.skip=true
#
#cd ../shopee-be-eureka-demo
#echo "Running Maven install in shopee-be-eureka-demo directory..."
#mvn install -DskipTests -Dmaven.test.skip=true
#
#cd ../shopee-be-gateway-demo
#echo "Running Maven install in shopee-be-gateway-demo directory..."
#mvn install -DskipTests -Dmaven.test.skip=true
#
#cd ../shopee-be-email-demo
#echo "Running Maven install in shopee-be-email-demo directory..."
#mvn install -DskipTests -Dmaven.test.skip=true
#echo "end start file jar"

#echo "start install images"
#cd ../shopee-be-account-demo
#echo "Running Maven install in shopee-be-account-demo directory..."
#docker build . -t quannguyen1999/shopee-be-account-demo
#
#cd ../shopee-be-admin-demo
#echo "Running Maven install in shopee-be-admin-demo directory..."
#docker build . -t quannguyen1999/shopee-be-admin-demo
#
#cd ../shopee-be-config-demo
#echo "Running Maven install in shopee-be-admin-demo directory..."
#docker build . -t quannguyen1999/shopee-be-admin-demo
#
#cd ../shopee-be-admin-demo
#echo "Running Maven install in shopee-be-admin-demo directory..."
#docker build . -t quannguyen1999/shopee-be-admin-demo
#
#cd ../shopee-be-admin-demo
#echo "Running Maven install in shopee-be-admin-demo directory..."
#docker build . -t quannguyen1999/shopee-be-admin-demo


