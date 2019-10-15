FROM golang:latest

# Add Maintainer Info
LABEL maintainer="Vaibhav Kaushal <vaibhavkaushal123@gmail.com>"

RUN echo "Listing files"
RUN ls -alh
RUN echo "==============================="

RUN echo "Changing the work directory to /app"
WORKDIR /app
RUN echo "Listing files in /app"
RUN ls -alh
RUN echo "==============================="

RUN echo "Copying Files"
COPY . .
RUN echo "Listing files after copy"
RUN echo "==============================="

RUN echo "Building app. Will run: go build -o main ."
RUN go build -o main .
RUN echo "Listing files after build"
RUN ls -alh
RUN echo "==============================="

RUN echo "Exposing port 8000"
EXPOSE 8000
RUN echo "Port 8000 exposed"
RUN echo "==============================="

RUN echo "Going to run main. Will execute: ./main"
CMD ["./main"]
#RUN echo "==============================="

#RUN echo "Server should be running"




