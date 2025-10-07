# ==============================
# 🧩 Murach ch14_ex1_email Project
# Base image: Tomcat 9 + JDK 17 (Temurin)
# ==============================
FROM tomcat:9.0-jdk17-temurin

# Metadata
LABEL maintainer="huynhngocthach16062005@gmail.com"
LABEL description="Murach ch14_ex1_email - Email List App using Jakarta Mail and JSP/Servlet"

# 1️⃣ Xóa webapps mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# 2️⃣ Copy file WAR đã build sẵn (đặt tên đúng file bạn có trong thư mục project)
# 👉 Nếu file bạn tên là ch14_ex1_email_war.war thì đổi thành ROOT.war để chạy trực tiếp ở http://localhost:8080/
COPY ch14_ex1_email_war.war /usr/local/tomcat/webapps/ROOT.war

# 3️⃣ Mở port 8080
EXPOSE 8080

# 4️⃣ Khởi động Tomcat khi container chạy
CMD ["catalina.sh", "run"]
