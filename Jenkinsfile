
pipeline {
//None parameter in the agent section means that no global agent will be allocated for the entire Pipeline’s
//execution and that each stage directive must specify its own agent section.

    agent { 
        docker { 
            image 'python:3.7.2' 
            args '-P 5000'
            } 
        }
    stages {
        stage('Build') {
            
            steps {

                withEnv(["HOME=${env.WORKSPACE}"]) {
                    sh 'pip install --user flask'
                }
            }
        }

        stage('Test') {
            steps {

                echo "test begin"
                
                withEnv(["HOME=${env.WORKSPACE}"]) {
                sh 'python test.py'
                }
            }
            
            post {
                always {
                    //This junit step archives the JUnit XML report (generated by the py.test comman
                    always {junit 'test-reports/*.xml'}
                    echo "test finish"
                }
            }
        }
        stage('Deliver') {
                    steps {

                            withEnv(["HOME=${env.WORKSPACE}"]) {
                                sh 'python hello.py'
                            }
                            
                        }
                    }


    }
}

