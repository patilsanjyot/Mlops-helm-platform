from fastapi import FastAPI

app = FastAPI(
    title="MLOps Sample ML API",
    version="1.0.0"
)

@app.get("/")
def root():
    return {
        "message": "Hello World from MLOps API"
    }

@app.get("/health")
def health():
    return {
        "status": "healthy"
    }