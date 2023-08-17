ARG MOSDNS_IMAGE_TAG=v5.1.3

FROM docker.io/irinesistiana/mosdns:${MOSDNS_IMAGE_TAG} AS production

# Copy the easymosdns directory to /etc/mosdns
COPY ./src /etc/mosdns

# Expose port 8080
EXPOSE 8080

# Set the entrypoint to run the entrypoint.sh script
CMD [ "sh", "-c", "mosdns start -d /etc/mosdns -c config.yaml" ]