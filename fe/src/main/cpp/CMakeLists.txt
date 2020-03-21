cmake_minimum_required(VERSION 3.4.1)

add_library(hello-jni SHARED hello-jni.c)

target_link_libraries(hello-jni		android		log)
