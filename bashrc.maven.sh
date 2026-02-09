script_echo "Maven setup..."

#export M2_HOME=$(ls --directory /usr/local/apache-maven/apache-maven* --reverse | head -n 1)
#if [[ -z "${M2_HOME}" ]]; then
#   echo "ERROR: Maven not found in /usr/local/apache-maven/"
#   return 1
#fi
echo "M2_HOME=${M2_HOME}"
export M2=${M2_HOME}/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
#echo "MAVEN_OPTS=${MAVEN_OPTS}"
export PATH=${PATH}:${M2}/bin

function maven_list_plugins() {
   mvn help:effective-pom | grep maven-plugin | grep artifactId | sed "s/[ \t]*//" | sed "s/<artifactId>//" | sed "s/-maven-plugin<\/artifactId>//" | sort --unique
}
export -f maven_list_plugins

function maven_list_goals() {
   plugin_search=${1:-.}
   for p in $(maven_list_plugins | grep ${plugin_search}); do
      mvn help:describe -Dplugin=${p} | grep -E '^[^ ]+:[^ ]+$'
   done
}
export -f maven_list_goals

# TeaVM/Flavour new project (not working at this typing)
#mvn archetype:generate \
#  -DgroupId=com.dougcrews.learn.teavm.flavour \
#  -DartifactId=learn-teavm-flavour \
#  -DinteractiveMode=false \
#  -DarchetypeGroupId=com.frequal.flavour \
#  -DarchetypeArtifactId=teavm-flavour-application \
#  -DarchetypeVersion=0.3.2
#cd flavour && mvn clean install && firefox target/flavour-1.0-SNAPSHOT/index.html

#which mvn
mvn --version

