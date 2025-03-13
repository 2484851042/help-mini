# 使用官方OpenJDK镜像（推荐Java 17或11）
FROM openjdk:17-jdk-alpine

# 设置容器内工作目录（后续操作基于此目录）
WORKDIR /app

# 复制当前目录下的JAR文件到镜像中（需与Dockerfile同级）
COPY help.jar app.jar

# 暴露应用端口（需与JAR配置文件中的端口一致）
EXPOSE 8080

# 启动命令（含时区等常用参数）
ENTRYPOINT ["java", "-jar", "-Duser.timezone=Asia/Shanghai", "app.jar"]