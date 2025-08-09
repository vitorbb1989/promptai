from promptlayer import promptlayer
import openai
import os
from dotenv import load_dotenv

load_dotenv()

openai.api_key = os.getenv("OPENAI_API_KEY")
promptlayer.api_key = os.getenv("PROMPTLAYER_API_KEY")

def gerar_prompt(prompt, modelo="gpt-3.5-turbo"):
    response = promptlayer.openai.chat.completions.create(
        model=modelo,
        messages=[{"role": "user", "content": prompt}],
        pl_tags=["frontend"],
        temperature=0.7
    )
    return response['choices'][0]['message']['content']
