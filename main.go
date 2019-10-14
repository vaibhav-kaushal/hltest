package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"time"
)

func Home(w http.ResponseWriter, req *http.Request) {
	_, _ = io.WriteString(w, fmt.Sprintf("Hello World! Current Time is %v", time.Now()))
}

func main() {
	http.HandleFunc("/", Home)
	err := http.ListenAndServe(":8000", nil)
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}
