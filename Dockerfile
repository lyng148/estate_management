# Sử dụng Tomcat 8.5.34 làm base image
FROM tomcat:8.5.34-jdk8-openjdk

# Xóa ứng dụng mẫu của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Sao chép file WAR của bạn vào thư mục webapps của Tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
