package main

import "fmt"

func sum( a, b int) int {
	return a + b
}

func main() {
	s := sum(5,5)
	fmt.Println(s)
}