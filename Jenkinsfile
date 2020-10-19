#!groovy
@Library('my-shared-library')_

pipeline{
    agent any
    tools{
          maven 'M2_HOME'
          jdk 'java-1.8.0-openjdk'
        git 'Default'
         }
stages{
   
    stage("tsting"){
        steps
        {
            script{
           echo 'testing testing.....'
            swissknife.printName 'Ram'
                }
        }
    }
    stage("buid"){
        steps
        {
            sh "mvn clean package"
        }
                  }
        
       
}        
    }
