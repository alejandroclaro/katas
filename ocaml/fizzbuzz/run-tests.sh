#!/bin/sh
ocamlfind ocamlc -package oUnit -linkpkg -o fizzbuzz  fizzbuzz.ml fizzbuzzTest.ml
./fizzbuzz -verbose
