FROM nginx:alpine
COPY src/ /usr/share/nginx/html/
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD wget -q --spider http://localhost/ || exit 1
CMD ["nginx", "-g", "daemon off;"]