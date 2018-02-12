#/bin/bash

HOSTNAME=`hostname`

find /opt/wso2/repository/conf -type f -exec sed -i "s/localhost/$HOSTNAME/g" {} \;

exit 0