package com.jtongay.poc

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class PocApplication

fun main(args: Array<String>) {
	println("booyah howdy yall")
	runApplication<PocApplication>(*args)
}
