FROM nginx:alpine

COPY files/default.conf /etc/nginx/conf.d/default.conf
COPY files/.htpasswd /etc/nginx/.htpasswd


# Download test data
ADD https://freetestdata.com/wp-content/uploads/2022/02/Free_Test_Data_2MB_MP4.mp4 /usr/share/nginx/html/2mb.mp4
ADD https://freetestdata.com/wp-content/uploads/2022/02/Free_Test_Data_10MB_MP4.mp4 /usr/share/nginx/html/10mb.mp4
ADD https://freetestdata.com/wp-content/uploads/2022/02/Free_Test_Data_15MB_MP4.mp4 /usr/share/nginx/html/15mb.mp4
ADD https://filesamples.com/samples/video/mp4/sample_3840x2160.mp4 /usr/share/nginx/html/126mb.mp4
RUN chown -R nginx:nginx /usr/share/nginx/html

RUN apk update && apk add --no-cache python3 && \
    wget https://bootstrap.pypa.io/get-pip.py -O /tmp/get-pip.py && \
    python3 /tmp/get-pip.py && \
    pip3 install botocore
