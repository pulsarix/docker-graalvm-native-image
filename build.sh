TAG_NAME=20.0.0
docker build -t pulsarix/graalvm-native-image:${TAG_NAME} .
docker build -t pulsarix/graalvm-native-image:latest .
