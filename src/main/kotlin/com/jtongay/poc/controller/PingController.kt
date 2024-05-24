package com.jtongay.poc.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/ping")
class PingController {

	@GetMapping("/")
	fun get(): String {
		println("booyah")
		return "PongDoWongsdfsdfhowdyyasdfasdfall"
	}
}