# ✅ Use official n8n image (contains the n8n command)
FROM n8nio/n8n:latest

# ✅ Set basic environment configs
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=moon
ENV N8N_BASIC_AUTH_PASSWORD=moon123
ENV N8N_PROTOCOL=https
ENV N8N_PORT=5678
ENV N8N_HOST=${RENDER_EXTERNAL_URL}
ENV WEBHOOK_URL=${RENDER_EXTERNAL_URL}

EXPOSE 5678

# ✅ Start n8n
CMD ["n8n", "start"]
