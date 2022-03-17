FROM gitea/gitea:1.9.1

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="gitea" \
      "org.label-schema.base-image.name"="docker.io/gitea/gitea" \
      "org.label-schema.base-image.version"="1.9.1" \
      "org.label-schema.description"="Gitea in a container" \
      "org.label-schema.url"="https://gitea.io" \
      "org.label-schema.vcs-url"="https://github.com/FXinnovation/fx-docker-gitea" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.gitea.version"="1.9.1" \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="Please see README.md"
