#!/bin/bash

rm -rf dandelion/ref/javadoc/dandelion-*
mv ../dandelion/dandelion-core/target/apidocs dandelion/ref/javadoc/dandelion-core
mv ../dandelion/dandelion-jsp/target/apidocs dandelion/ref/javadoc/dandelion-jsp
mv ../dandelion/dandelion-thymeleaf/target/apidocs dandelion/ref/javadoc/dandelion-thymeleaf
mv ../dandelion/dandelion-extras/dandelion-servlet2/target/apidocs dandelion/ref/javadoc/dandelion-servlet2
mv ../dandelion/dandelion-extras/dandelion-webjars/target/apidocs dandelion/ref/javadoc/dandelion-webjars

