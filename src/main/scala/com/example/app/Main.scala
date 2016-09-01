package com.example.app

import com.example.Library
/**
  * Trivial Scala Main application that references the Library class that we make in Java
  */
object Main extends App {
  println(Library.AppendWorld(Library.Hello))
}
