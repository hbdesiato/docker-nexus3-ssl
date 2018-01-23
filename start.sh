#! /bin/bash
if [ ! -e "$NEXUS_DATA/etc/ssl/keystore.jks" ]; then
	mkdir -p "$NEXUS_DATA/etc/ssl"
	chmod go-rwx "$NEXUS_DATA/etc/ssl"
	/opt/java/bin/keytool -keystore "$NEXUS_DATA/etc/ssl/keystore.jks" \
	-alias jetty -genkey -keyalg RSA -sigalg SHA256withRSA \
	-validity 1095 -storepass password -keypass password \
	-ext BC:true=ca:true \
	-dname "cn=$HOST"
fi
~/bin/nexus run
