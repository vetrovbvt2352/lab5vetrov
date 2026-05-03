FROM python:3.11

WORKDIR /app

RUN pip install --no-cache-dir fastapi uvicorn pydantic-settings pydantic httpx pytest

COPY src ./src

ENTRYPOINT [ "python", "-m", "src.main" ]
