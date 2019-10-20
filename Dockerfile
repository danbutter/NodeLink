FROM mcr.microsoft.com/dotnet/core/runtime

EXPOSE 8090
VOLUME NodeLink
COPY startnodelink.sh /startnodelink.sh

RUN apt-get update && apt-get install -y \
    wget \
    && apt-get clean \
    && chmod +x startnodelink.sh 

# Define environment variable
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV LANG C.UTF-8

# Run  when the container launches 
# ENTRYPOINT ["./startnodelink.sh"]
CMD ["/bin/bash", "/startnodelink.sh"]
