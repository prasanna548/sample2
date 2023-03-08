pipeline {
    //agent {label "linux"}
    agent any
    // this is for reading,...

    stages {
        stage('chekout') {
            steps {
                cleanWs()
               // git branch: 'develpment', url: 'exampleurl'
                echo 'Hello World'
                echo "${name}"
                sh 'whoami'
            }
        }
    stage('build') {
        steps{
            
            echo "this is stage2"
        }
        
    }
    stage ('test'){
        steps{
         echo "this is stage3"   
        }
    }
    
}
    
}
