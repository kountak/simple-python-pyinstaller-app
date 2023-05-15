pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                any {
                    image 'python:2-alpine'
                }
            }
            steps {
                bat 'python -m py_compile sources/add2vals.py sources/calc.py'
            }
        }
        stage('Test') {
            agent {
                any {
                    image 'qnib/pytest'
                }
            }
            steps {
                bat 'py.test --verbose --junit-xml test-reports/results.xml sources/test_calc.py'
            }
            post {
                always {
                    junit 'test-reports/results.xml'
                }
            }
        }
        stage('Deliver') {
            agent {
                any {
                    image 'cdrx/pyinstaller-linux:python2'
                }
            }
            steps {
                bat 'pyinstaller --onefile sources/add2vals.py'
            }
            post {
                success {
                    archiveArtifacts 'dist/'
                }
            }
        }
    }
}