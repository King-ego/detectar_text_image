FROM python:3.12-slim

# Instala dependências do sistema e o tesseract
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    libtesseract-dev \
    libgl1 \
    && rm -rf /var/lib/apt/lists/*

# Define o diretório de trabalho
WORKDIR /app

# Copia requirements (se você tiver um)
COPY requirements.txt .

# Instala dependências Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código do projeto
COPY . .

# Comando para rodar o script principal
CMD ["python", "main.py"]
