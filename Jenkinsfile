node {
    stage 'Checkout'
    def branchName = "${branch}"
    
    git credentialsId: 'GitDevOpsAshish', url: 'https://github.com/ashishkarpe/Pomelo-Assignment.git' ,branch: branchName  
    //git credentialsId: 'GitDevOpsAshish', url: 'ssh://jenkins@github.com:ashishkarpe/Pomelo-Assignment.git' 
    // git([url: 'git@github.com:ashishkarpe/Pomelo-Assignment.git', branch: branchName])
   def mvnHome = tool 'M3'
   
    dir('App') {
        stage 'Build Pomelo App'
        //sh "${mvnHome}/bin/mvn spring-boot:run"
        sh "${mvnHome}/bin/mvn clean install"
       // sh "${mvnHome}/bin/mvn clean install -DskipTests App"
    }
 
        
    
    dir('App') {
        stage 'Build docker image'
        def pom = readMavenPom file: 'pom.xml'
        def v = version()
        //sh "docker build -t ashishkarpe/pomeloassignment1:${v} App/src/main/resources/"  
       // sh "docker push ashishkarpe/pomeloassignment1:${v}"
        sh "${mvnHome}/bin/mvn clean package -DreleaseVersion=${v} -DdevelopmentVersion=${pom.version} -DskipTests -Pdocker docker:push "
        
    }
    dir('k8s') {
        stage 'Deploy docker image'
        //def pom = readMavenPom file: 'pom.xml'
        def v = version()
        //sh "docker build -t ashishkarpe/pomeloassignment1:${v} App/src/main/resources/"  
       // sh "docker push ashishkarpe/pomeloassignment1:${v}"
        //sh "${mvnHome}/bin/mvn clean package -DreleaseVersion=${v} -DdevelopmentVersion=${pom.version} -DskipTests -Pdocker docker:push "
        sh "pwd"
       sh "kubectl --kubeconfig=/var/lib/jenkins/.kube/config-eks  create -f  PomeloApp-deployment.yaml"
    }
}
def version() {
  sh('git rev-parse --abbrev-ref HEAD > GIT_BRANCH')
  sh('git describe --long --tags --dirty --always > GIT_COMMIT')
  sh('git rev-list HEAD | wc -l > GIT_LOG_NO')

  def branch = readFile('GIT_BRANCH').trim();
  def hash = readFile('GIT_COMMIT').trim();
  def number = readFile('GIT_LOG_NO').trim();
  "${branch}.${number}.${hash}.${currentBuild.number}"
}
