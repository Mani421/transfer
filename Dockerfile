FROM airhacks/glassfish
COPY ./target/transfer.war ${DEPLOYMENT_DIR}
