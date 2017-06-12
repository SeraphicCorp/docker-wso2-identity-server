# WSO2 Identity Server

FROM openjdk:8
MAINTAINER Ravaka Razafimanantsoa <ravseraphin+docker-wso2-base@gmail.com>

ENV PRODUCT_NAME="identity-server" \
    PRODUCT_SHORT_NAME="is" \
    VERSION="5.3.0"

WORKDIR /opt
ADD ./wso2${PRODUCT_SHORT_NAME}-${VERSION}.zip /opt/wso2${PRODUCT_SHORT_NAME}-${VERSION}.zip
ADD ./setup.sh /
RUN unzip wso2${PRODUCT_SHORT_NAME}-${VERSION}.zip && mv wso2${PRODUCT_SHORT_NAME}-${VERSION} wso2 && rm wso2${PRODUCT_SHORT_NAME}-${VERSION}.zip

EXPOSE 8000 9763 9443 10500

CMD /setup.sh && /opt/wso2/bin/wso2server.sh
