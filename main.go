package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
	"time"
)

type conf struct {
	Logtest bool
	LogIntv int
	LogStr  string
	Port    string
}

func main() {
	var cfg conf
	flag.BoolVar(&cfg.Logtest, "logtest", true, "test log true or false")
	flag.IntVar(&cfg.LogIntv, "logintv", 600, "logintv is this app will produce log in each how many second (default 10 minutes)")
	flag.StringVar(&cfg.LogStr, "logstr", "this is testing logs", "logintv is this app will produce log like this")
	flag.StringVar(&cfg.Port, "port", "8080", "logintv is this app will produce log like this")
	flag.Parse()
	if cfg.Logtest {
		go logs(cfg)
	}
	run(cfg)
}

func ping(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "%s", "PONG")
}

func run(c conf) {
	http.HandleFunc("/ping", ping)
	log.Printf("server run at port :%s \n", c.Port)
	log.Fatal(http.ListenAndServe(":"+c.Port, nil))
}

func logs(c conf) {
	for {
		log.Println(c.LogStr)
		time.Sleep(time.Duration(c.LogIntv) * time.Second)
	}
}
