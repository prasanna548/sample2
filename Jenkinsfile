pipeline{
    agent any
    tools{
          maven 'M2_HOME'
          jdk 'JAVA_HOME'
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
            echo 'testing testing.....'
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
