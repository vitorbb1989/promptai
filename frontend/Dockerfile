FROM python:3.11-slim

WORKDIR /app
COPY requirements.txt ./

# Instala pip, dependências e o curl!
RUN apt-get update && apt-get install -y curl \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

RUN adduser --disabled-password --gecos "" appuser
USER appuser

COPY . .

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD curl -f http://localhost:8501/_stcore/health || exit 1

CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.headless=true"]
