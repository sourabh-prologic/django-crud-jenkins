pipeline {
    agent any

    stages {
        // stage('Clone Repo') {
        //     steps {
        //         git 'https://github.com/your-username/your-django-repo.git'
        //     }
        // }

        // stage('Install Dependencies') {
        //     steps {
        //         sh 'pip install -r requirements.txt'
        //     }
        // }

        stage('Setting Up Environment'){
            steps{
                sh '''
                    chmod +x ./jenkins_setup_venv.sh
                    ./jenkins_setup_venv.sh
                '''
            }
        }

        stage('Setting Up Gunicorn'){
            steps{
                sh '''
                    chmod +x ./jenkins_start_gunicorn.sh
                    ./jenkins_start_gunicorn.sh
                '''
            }
        }

        // stage('Run Tests') {
        //     steps {
        //         sh 'python manage.py test'
        //     }
        // }

        // stage('Deploy') {
        //     steps {
        //         sshagent (credentials: ['local-ssh-key']) {
        //             sh 'scp -r * prologic@localhost:"~/Python_Projects/Mudder AI/hurricane-backend"'
        //             sh 'ssh prologic@localhost "cd "~/Python_Projects/Mudder AI/hurricane-backend" && ./scripts/start_celery.sh"'
        //         }
        //     }
        // }
    }
}
