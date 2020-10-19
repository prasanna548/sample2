#!groovy
@Library('my-shared-library')_

pipeline{
    agent any
    tools{
          maven 'M2_HOME'
          jdk 'java-1.8.0-openjdk'
         }
stages{
    stage("sync")

    {
        steps
        {
            git 'https://github.com/prasanna548/game-of-life.git'
            
        }
   }
       stage("tsting")

    {
        steps
        {
            script{
//echo 'testing testing.....'
            swissknife.printName.name 'ram'
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
