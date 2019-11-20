String dockerHubUser = "philipwold"
String repo = "alpine-tini"

try {
    node ("master") {
        stage ("checkout scm") {
            checkout scm
        }
        
        stage ("docker build") {
            def image = docker.build("${dockerHubUser}/${repo}")
            docker.withRegistry('https://registry-1.docker.io/v2/', '4ad791bd-6d00-41ac-aa33-ba5aeb446f25') {
                image.push()
            }
        }
    }
}

catch(err){
    println(err.toString())
    error(err.getMessage())
    currentBuild.result = 'FAILED'
    exception_msg = err.getMessage();
}

finally {
    stage('Clean Workspace') {
        cleanWs()
    }
}