package main

import (
	"fmt"
	"net/http"
	"os"

	"github.com/gorilla/mux"
	"github.com/rs/cors"
)

func init() {

	// err := godotenv.Load()
	// if err != nil {
	// 	log.Fatal("Error loading .env file")
	// }

}

func main() {
	//initializing the mux router
	r := mux.NewRouter()

	//declaration of routers
	r.HandleFunc("/testApi", testAPIHandler).Methods("GET")

	handler := cors.AllowAll().Handler(r)
	http.ListenAndServe(":8080", handler)
}

func testAPIHandler(w http.ResponseWriter, r *http.Request) {

	w.Write([]byte("name: " + os.Getenv("first_name") + " " + os.Getenv("last_name") + "\n"))
	fmt.Println("a")

}
