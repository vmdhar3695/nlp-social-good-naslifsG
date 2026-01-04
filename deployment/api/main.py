from fastapi import FastAPI
app = FastAPI()

@app.get('/')
def root():
    return {'message': 'NASLIF-SG API Running'}