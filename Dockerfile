FROM teamvaders/dragonbot:latest

#clonning repo 
RUN git clone -b beta https://github.com/TheVaders/InVade.git /root/dragonbot

#working directory 
WORKDIR /root/dragon

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","dragonbot"]
