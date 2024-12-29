from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware  # Import CORSMiddleware
from pydantic import BaseModel
import joblib
import numpy as np
import logging

# Set up logging
logging.basicConfig(level=logging.INFO)

# Load the trained model and label encoders
try:
    model = joblib.load('xgbmodel.pkl')
    label_encoders = {
        "cut": joblib.load('label_encoder_cut.pkl'),
        "color": joblib.load('label_encoder_color.pkl'),
        "clarity": joblib.load('label_encoder_clarity.pkl')
    }
    logging.info("Model and label encoders loaded successfully.")
except Exception as e:
    logging.error(f"Error loading model or label encoders: {e}")
    raise

app = FastAPI()

# Enable CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Allows requests from any origin
    allow_credentials=True,
    allow_methods=["*"],  # Allows all HTTP methods
    allow_headers=["*"],  # Allows all headers
)

# Define the input data format for FastAPI
class PredictionRequest(BaseModel):
    carat: float  # Numerical input
    cut: str      # Categorical input (encoded)
    color: str    # Categorical input (encoded)
    clarity: str  # Categorical input (encoded)
    depth: float  # Numerical input
    table: float  # Numerical input

# Define the prediction endpoint
@app.post("/predict/")
async def predict(request: PredictionRequest):
    try:
        # Encode the categorical inputs using the respective label encoders
        encoded_cut = label_encoders["cut"].transform([request.cut])[0]
        encoded_color = label_encoders["color"].transform([request.color])[0]
        encoded_clarity = label_encoders["clarity"].transform([request.clarity])[0]
        
        logging.info(f"Encoded features: cut={encoded_cut}, color={encoded_color}, clarity={encoded_clarity}")
        
        # Prepare the input data for prediction
        features = np.array([[request.carat, encoded_cut, encoded_color, encoded_clarity, request.depth, request.table]])
        logging.info(f"Input features: {features}")
        
        # Make a prediction using the trained model
        prediction = model.predict(features)
        logging.info(f"Prediction result: {prediction}")
        
        # Return the predicted price as a float, not numpy.float32
        return {"predicted_price": float(prediction[0])}
    
    except Exception as e:
        logging.error(f"Error during prediction: {e}")
        raise HTTPException(status_code=500, detail="Internal Server Error")
