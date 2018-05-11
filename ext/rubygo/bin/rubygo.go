package main

import "C"
import "../lib/test"

//export Add
func Add(a, b C.int) C.int {
    return C.int(test.Add(int(a), int(b)))
}

//export Minus
func Minus(a, b C.int) C.int {
    return C.int(test.Minus(int(a), int(b)))
}

func main() {} // Ignore
