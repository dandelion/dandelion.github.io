#!/bin/bash

mkdir dandelion/releases/0.2.1
mkdir dandelion/releases/0.2.1/javadoc
mv ../dandelion/dandelion-core/target/site/apidocs dandelion/releases/0.2.1/javadoc/dandelion-core
mv ../dandelion/dandelion-jsp/target/site/apidocs dandelion/releases/0.2.1/javadoc/dandelion-jsp
mv ../dandelion/dandelion-thymeleaf/target/site/apidocs dandelion/releases/0.2.1/javadoc/dandelion-thymeleaf
mv ../dandelion/dandelion-extras/dandelion-servlet2/target/site/apidocs dandelion/releases/0.2.1/javadoc/dandelion-servlet2
mv ../dandelion/dandelion-extras/dandelion-webjars/target/site/apidocs dandelion/releases/0.2.1/javadoc/dandelion-webjars

