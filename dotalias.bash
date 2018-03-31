#echo "Starting dotaalias.bash"

# Typos & shortcuts

alias h='history'
alias dc='cd'
alias ci='ci -u'
alias ls='ls -F'
alias sl='ls -F'
alias l='ls -F'
alias rm='rm -i'
alias tag='find $CODEBASE_HOME -name "*.java" -print | etags -'
alias rgrep='find . -name \!:2 -exec grep -i \!^ {} /dev/null \\\;'
alias more='less'
alias mroe='less'
alias ant='~/dev/apache-ant-1.7.0/bin/ant'
alias g='$CODEBASE_HOME/gradlew'
alias gradle='$CODEBASE_HOME/gradlew'

alias dmcreate='docker-machine create -d virtualbox --virtualbox-disk-size="100000" --virtualbox-memory 8192 default'
alias dmcreate-controller='docker-machine create -d virtualbox --virtualbox-disk-size="100000" --virtualbox-memory 4096 controller'
alias dmcreate-ecommerce='docker-machine create -d virtualbox --virtualbox-disk-size="100000" --virtualbox-memory 4096 ecommerce'
alias dip='docker inspect -f "{{.Name}} - {{.NetworkSettings.IPAddress }}" $(docker ps -aq)'

#alias docker-controller-ip='docker inspect -f "{{.Name}} - {{.NetworkSettings.IPAddress }}" $(docker ps -aq --filter "name=10960-master-build")'
alias docker-controller-ip='docker inspect -f "{{.NetworkSettings.IPAddress }}" $(docker ps -aq --filter "name=10960-master-build")'

#docker login https://docker-registry.corp.appdynamics.com:5003


# How to access mysql
# docker ps docker 
alias dmysql='docker exec -it $(docker ps -aqf "name=/10960-master-build_2017-01-19_09-24-54") /controller/controller-workspace/controller-install/db/bin/mysql --user controller --password=controller --database=controller'

# How to SSH into docker vm
#
#SSH_PORT_KEY="$SSH_PORT""/tcp"
#SSH_PORT_TO_EXPOSE=`docker inspect "$CONTAINER_ID" | jq -r '.[0] | .NetworkSettings.Ports["'${SSH_PORT_KEY}'"][0].HostPort'`

#docker exec -it $(docker ps -aqf "name=/10960-master-build_2017-01-19_09-24-54") /bin/bash -c "pwd;cd /usr/local;ls"

alias dm='docker-machine'
alias default='eval "$(docker-machine env default)"'
alias dmsa='eval "$(docker-machine env sampleapp)"'
alias dm1='eval "$(docker-machine env dm1)"'
alias dm2='eval "$(docker-machine env dm2)"'
alias dm3='eval "$(docker-machine env dm3)"'
alias dm4='eval "$(docker-machine env dm4)"'
alias dm5='eval "$(docker-machine env dm5)"'
alias dmcontroller='eval "$(docker-machine env controller)"'
alias dmecommerce='eval "$(docker-machine env ecommerce)"'
alias dock='cd $CODEBASE_HOME/automation/docker'


alias ec1='cd ~/work/ECommerce1'

alias clean-sc='find . -name semantic.cache -exec rm -Rf {} \;'
alias clean-aws='/bin/rm -f $CODEBASE_HOME/eum-cloud/resources/AwsStoreProperties.dev.properties'
alias clean-aws2='find . -name eum-aws-store.yml_* -exec rm -Rf {} \;'
alias clean-BACK='find . -name *.BACK -exec rm -Rf {} \;'
alias clean-orig='find . -name *.properties.orig -exec rm -Rf {} \;'
alias clean-other='/bin/rm -Rf $CODEBASE_HOME/agent/java/appagent/core/appagent; /bin/rm -Rf $CODEBASE_HOME/agent/system-agent-tasks/dependencies/ ; /bin/rm -Rf controller/controller-app/neo-deploy.xml.orig ; /bin/rm -Rf  push-notification/push-notification-core/run/ ; /bin/rm -Rf push-notification/push-notification-installer/run/ ; /bin/rm -Rf push-notification/push-notification-installer/src/dist/conf/AwsCredentials.properties'
alias clean-push='git checkout $CODEBASE_HOME/push-notification/push-notification-core/src/dist/conf/push-notification-server.properties ; git checkout $CODEBASE_HOME/push-notification/push-notification-installer/src/dist/conf/aws.properties'
alias clean='clean-sc;clean-aws;clean-aws2;clean-BACK;clean-orig;clean-other;clean-push'

alias gen='g --info :ux:ui:shared:generateMobileAppDtosAndroid ; g --info :ux:ui:shared:generateMobileAppDtosIos'
alias geni='g --info :ux:ui:shared:mobile-generator:generateIos'
alias gena='g --info :ux:ui:shared:mobile-generator:generateAndroid'


# General navigation
alias work='cd ~/work ; pwd'
alias sample='cd $CODEBASE_HOME/../SampleApp ; pwd'
alias working='cd ~/Google\ Drive/working ; pwd'
alias dev='cd ~/dev ; pwd'
alias jaenv='cd ~/jaenv ; pwd'
alias sa='source ~/jaenv/dotalias.bash; source $CODEBASE_HOME/../developer-productivity/ui/bin/ui-tools-aliases.sh'
#alias jangeles='cd $CODEBASE_HOME/ux/ui/view-main/src/scripts/jangeles'
alias joe='cd ~/joe'
alias uik='cd ~/Google\ Drive/UX/UI\ Kit'
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'
alias .....='cd .....'
alias icons='cd ~/Google\ drive/UX/UI\ Kit/icons'

alias jae='cd ~/work/jira-alerting-extension/jira-alerting-extension'

# git
alias gits='git status'
alias gitst='git status --porcelain'
alias ga='git add'
alias gs='git status --porcelain'
alias gc='git commit'
alias gca='git commit --amend --no-edit'
alias ignored='git clean -ndX | sed -e "s:Would remove:Git is ignoring:"'
alias gclean='git clean -fdx -e \*.iml -e .idea'
alias gitb='git branch -lvv | grep `git rev-parse --abbrev-ref HEAD` | grep "*"'
alias gsp='git stash ; git pull ; git stash pop'
alias git-untracked='git ls-files . --exclude-standard --others'
alias git-ignored='git ls-files . --ignored --exclude-standard --others'
alias h1='git diff --name-only HEAD~1'
alias h2='git diff --name-only HEAD~2'
alias h3='git diff --name-only HEAD~3'

#alias ij='/Applications/IntelliJ\ IDEA\ 13\ CE.app/bin/ ~/work/appDynamics1/codebase --line 3 ~/work/appDynamics1/codebase/controller/controller-web/src/java/com/singularity/ee/controller/ui/dto/navigation/NavTreeEntry.java'
alias ij='/Applications/IntelliJ\ IDEA\ 13\.app/bin/inspect.sh '

alias ut='$APP_DYNAMICS_HOME/developer-productivity/ui/bin/ui-tools'
alias et='$CODEBASE_HOME/eum-cloud/tools/eum-tools'


alias e2emc='ssh -i ~/.ssh/e2e-demo.pem centos@52.32.199.153 ; echo "sudo -i ; su appdynamics"'
alias e2ema='ssh -i ~/.ssh/e2e-demo.pem centos@52.32.216.158 ; echo "sudo -i ; su appdynamics"'

alias pa='~/work/build-policies/tools/publish-artifact.sh'

alias ports='sudo lsof -i -P | grep -i "listen"'

#useLocalEUM
set-eum() {
    if [ "$HOSTNAME" == "jangeles-mac" ] ; then
        useLocalEUM
        export EUM_ACCOUNT=jangeles
        export EUM_APP_KEY_PREFIX=jange
    elif [ "${HOSTNAME:0:6}" == "pxdemo" ] ; then
        useLocalEUM
        export EUM_ACCOUNT=pxdemo
        export EUM_APP_KEY_PREFIX=pxd
    else
        echo "set-eum failed for $HOSTNAME"
        exit -1
    fi
    echo "HOSTNAME=$HOSTNAME"
    echo "EUM_ACCOUNT=$EUM_ACCOUNT"
    echo "EUM_APP_KEY_PREFIX=$EUM_APP_KEY_PREFIX"
    echo "USE_EUM_CLOUD=$USE_EUM_CLOUD"
    echo "USE_EUM_ON_PREM=$USE_EUM_ON_PREM"
    echo "USE_EUM_SHADOW=$USE_EUM_SHADOW"
}

alias dclean='docker stop $(docker ps -a -q) ; docker rm $(docker ps -a -q)'

#================================================================================
# sql / database
#================================================================================
# db
# Dump the current database including the timestamp in the name
alias backup-db='pushd $CODEBASE_HOME ; mysqldump -ucontroller -pcontroller controller --protocol=tcp > controllerdump_$(date "+%Y%m%d_%H%M").sql ; popd'
# Restore a previously saved dump (add the name of the backup file as the 1st arg)
alias restore-db='mysql -ucontroller -pcontroller controller < '

#================================================================================
# navigation shortcuts to commonly used dev directories
#================================================================================
# ui
alias 10tierApp='cd $CODEBASE_HOME/ux/test-apps/trainingApps/10tierApp'
alias 20tierApp='cd $CODEBASE_HOME/ux/test-apps/trainingApps/20tierApp'
alias 2tierTestApp='cd $CODEBASE_HOME/ux/test-apps/trainingApps/2tierTestApp'
alias analytics-processor='cd $CODEBASE_HOME/analytics/analytics-processor'
alias ap='analytics-processor'
alias app='cd $CODEBASE_HOME/ux/ui/view-main/src/web/app'
alias assets='cd $CODEBASE_HOME/ux/ui/assets'
alias cart='cd $CODEBASE_HOME/../cart'
alias cb='cd $CODEBASE_HOME'
alias acb='cd $CODEBASE_HOME/../analytics-codebase/analytics'
alias ama='cd $CODEBASE_HOME/ux/android-UI/AppDynamics'
alias ima='cd $CODEBASE_HOME/ux/iOS-UI/AppDynamics'
alias css='cd $CODEBASE_HOME/ux/ui/view-main/src/web/css'
alias ctmp='cd $CONTROLLER_TMP'
alias cwar='cd $GLASSFISH_HOME/domains/domain1/applications/controller/controller-web_war'
alias domain1='cd $CODEBASE_HOME/../controller-tmp/glassfish/glassfis/domains/domain1'
alias dp='cd $APP_DYNAMICS_HOME/developer-productivity'
alias dpb='cd $APP_DYNAMICS_HOME/developer-productivity/ui/bin'
alias ec='cd ~/work/ECommerce'
alias ed='eum-deploy'
alias es='eum-shared'
alias eum.test.loadgen='cd $CODEBASE_HOME/agent/rum/mobile/common/eum.test.loadgen'
alias etl='eum.test.loadgen'
alias eum-cloud='cd $CODEBASE_HOME/eum-cloud'
alias eum-deploy='cd $CODEBASE_HOME/../eum-deploy'
alias eum-shared='cd $CODEBASE_HOME/eum-shared'
alias gf='cd $CODEBASE_HOME/../controller-tmp/glassfish/glassfish'
alias images='cd $CODEBASE_HOME/ux/ui/assets/src/images'
alias logs='cd $GLASSFISH_HOME/domains/domain1/logs'
alias rct='cd $CODEBASE_HOME/agent/rum/component-tests'
#alias scripts='cd $CODEBASE_HOME/ux/ui/view-main/src/scripts'
alias services='cd $CODEBASE_HOME/ux/ui/view-main/src/web/app/services'
alias shared='cd $CODEBASE_HOME/ux/ui/shared'
alias thirdparty-software='cd $CODEBASE_HOME/../thirdparty-software'
alias tp='thirdparty-software'
alias ui.lite='cd $CODEBASE_HOME/ui.lite'
alias ui='cd $CODEBASE_HOME/ux/ui'
alias videos='cd $CODEBASE_HOME/ux/ui/assets/src/videos'
alias view-main='cd $CODEBASE_HOME/ux/ui/view-main'
alias view='cd $CODEBASE_HOME/ux/ui/view-main/src/web/app/view'
alias vm='cd $CODEBASE_HOME/ux/ui/view-main'
alias wdh='cd $CODEBASE_HOME/../controller-tmp/glassfish/glassfish/domains/domain1/applications/controller/controller-web_war'
alias web='cd $CODEBASE_HOME/ux/ui/view-main/src/web'
alias ios='cd $CODEBASE_HOME/ux/iOS-UI/AppDynamics'
alias android='cd $CODEBASE_HOME/ux/android-UI/AppDynamics'
alias mas='cd $CODEBASE_HOME/controller/controller-web/src/main/java/com/singularity/ee/controller/ui/services/mobileApp'
alias mad='cd $CODEBASE_HOME/controller/controller-web/src/main/java/com/singularity/ee/controller/ui/dto/mobileApp'
alias controller-api='cd $CODEBASE_HOME/controller/controller-api'
alias c-api='cd $CODEBASE_HOME/controller/controller-api'
alias controller-app='cd $CODEBASE_HOME/controller/controller-app'
alias c-app='cd $CODEBASE_HOME/controller/controller-app'
alias controller-beans='cd $CODEBASE_HOME/controller/controller-beans'
alias c-beans='cd $CODEBASE_HOME/controller/controller-beans'
alias controller-web='cd $CODEBASE_HOME/controller/controller-web'
alias c-web='cd $CODEBASE_HOME/controller/controller-web'
alias controler-war='cd $CODEBASE_HOME/controller/controller-war'
alias c-war='cd $CODEBASE_HOME/controller/controller-war'
alias controller-dbschema='cd $CODEBASE_HOME/controller/controller-dbschema'
alias c-dbschema='cd $CODEBASE_HOME/controller/controller-dbschema'
alias controller-tests='cd $CODEBASE_HOME/controller/controller-tests'
alias c-tests='cd $CODEBASE_HOME/controller/controller-tests'
alias jsagent='cd $CODEBASE_HOME/eum/agents/jsagent'
alias bp='cd ~/work/builld-policies'
alias mg='cd $CODEBASE_HOME/ux/ui/shared/mobile-generator'

#================================================================================
# view/edit common config properties files
#================================================================================

alias controller-api.ts='$EDITOR $CODEBASE_HOME/ux/ui/view-main/src/web/lib/controller/controller-api.ts'
alias controller-web.ts='$EDITOR $CODEBASE_HOME/ux/ui/view-main/src/web/lib/controller/controller-web.ts'
alias domain.xml='$EDITOR $CODEBASE_HOME/../controller-tmp/glassfish/glassfish/domains/domain1/config/domain.xml'
alias eum-shared.ts='$EDITOR $CODEBASE_HOME/ux/ui/view-main/src/web/lib/controller/eum-shared.ts'
alias license.lic='$EDITOR $CODEBASE_HOME/../controller-tmp/license.lic'
alias styles.css='$EDITOR $CODEBASE_HOME/ux/ui/view-main/src/flex/styles.css'
alias ui.properties='$EDITOR $CODEBASE_HOME/ux/ui/view-main/config/locale/en_US/ui.properties'
alias web.xml-deployed='$EDITOR $GLASSFISH_HOME/domains/domain1/applications/controller/controller-web_war/WEB-INF/web.xml'
alias web.xml='$EDITOR $CODEBASE_HOME/controller/controller-web/src/content/WEB-INF/web.xml'
alias schema='$EDITOR $CODEBASE_HOME/controller/controller-dbschema/src/sql/mysql/create-schema.sql'

#================================================================================
# Open log files with Console app
#================================================================================

alias Console='/Applications/Utilities/Console.app/Contents/MacOS/Console'
alias aggregator.log='$EDITOR $CODEBASE_HOME/../eum-deploy/aggregator/logs/eum-aggregator.log &'
alias agg.log='aggregator.log'
alias aggregator.console='Console $CODEBASE_HOME/../eum-deploy/aggregator/logs/eum-aggregator.log &'
alias agg.console='Console $CODEBASE_HOME/../eum-deploy/aggregator/logs/eum-aggregator.log &'
alias analytics.log=' $EDITOR $CODEBASE_HOME/analytics/analytics-processor/build/install/analytics-processor/logs/analytics-all.log &'
alias analytics.console='Console $CODEBASE_HOME/analytics/analytics-processor/build/install/analytics-processor/logs/analytics-all.log &'
alias collector.log='$EDITOR $CODEBASE_HOME/../eum-deploy/collector/logs/eum-collector.log &'
alias collector.console='Console $CODEBASE_HOME/../eum-deploy/collector/logs/eum-collector.log &'
alias crashprocessor.log='$EDITOR $CODEBASE_HOME/../eum-deploy/crash-processor/logs/eum-crash-processor.log &'
alias crashprocessor.console='Console $CODEBASE_HOME/../eum-deploy/crash-processor/logs/eum-crash-processor.log &'
alias eumprocessor.log='$EDITOR $CODEBASE_HOME/../eum-deploy/eum-processor/logs/eum-processor.log &'
alias eumprocessor.console='Console $CODEBASE_HOME/../eum-deploy/eum-processor/logs/eum-processor.log &'
alias server.log='$EDITOR $GLASSFISH_HOME/domains/domain1/logs/server.log &'
alias server.console='Console $GLASSFISH_HOME/domains/domain1/logs/server.log &'
alias mobileloadgen.log='$EDITOR $CODEBASE_HOME/../mobileloadgen/logs/mobileloadgen.log &'
alias mobileloadgen.console='Console $CODEBASE_HOME/../mobileloadgen/logs/mobileloadgen.log &'
alias webloadgen.log='$EDITOR $CODEBASE_HOME/../webloadgen/logs/webloadgen.log &'
alias webloadgen.console='Console $CODEBASE_HOME/../webloadgen/logs/webloadgen.log &'
alias shepherd.log='$EDITOR $CODEBASE_HOME/eum/synthetic/synthetic-shepherd/build/install/synthetic-shepherd/log/synthetic-shepherd.log &'
alias shepherd.console='Console $CODEBASE_HOME/eum/synthetic/synthetic-shepherd/build/install/synthetic-shepherd/log/synthetic-shepherd.log &'

alias glassfish.console='open http://localhost:4848/common/index.jsf'

#================================================================================
# Bootstrapping custom.properties with defaults for a dev environment
#================================================================================

alias create-custom-properties="echo 'start-glassfish-in-debug-mode=true' > $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.internal.devonly.eum.license.file.read.enabled=false' >> $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.eum.cloud.hostName=http\\\\://localhost\\\\:7001' >> $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.eum.beacon.hostName=localhost\\\\:7001' >> $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.eum.adrumextension.urltemplate=localhost:8080' >> $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.eum.analytics.client.type=rest' >> $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.eum.analytics.service.hostName=localhost\\\\:9080' >> $CODEBASE_HOME/controller/controller-app/custom.properties"

alias custom.properties='$EDITOR $CODEBASE_HOME/controller/controller-app/custom.properties'

#================================================================================
# Common UI build tasks
#================================================================================

# Build shortcuts
alias redeploy-web-debug='pushd $UI_HOME ; pwd ; ant redeploy-web-debug ; popd ; tn "redeploy-web-debug complete"'
alias rwd='pushd $CODEBASE_HOME/ux/ui/view-main ; ant redeploy-web-debug-keep-swf ; popd ; tn "rwd complete"'
alias rs='pushd $CODEBASE_HOME/ux/ui/view-main ; ant redeploy-sass ; popd ; tn "rs complete"'
alias compile-typescript-app='pushd $UI_HOME ; pwd ; ant compile-typescript-app ; popd ; tn "compile-typescript-app complete"'
alias cta='compile-typescript-app'
alias redeploy-test='pushd $UI_HOME ; pwd ; ant redeploy-test ; popd'
alias compile-sass='pushd $UI_HOME ; pwd ; ant compile-sass ; popd'
alias compile-typescript='pushd $UI_HOME ; pwd ; ant compile-typescript ; popd'
alias compile-resource-manager='pushd $UI_HOME ; pwd ; ant compile-resource-manager ; popd'
alias compile-web='pushd $UI_HOME ; pwd ; ant compile-web ; popd'
alias redeploy-no-ui='pushd $CODEBASE_HOME/controller/controller-app ; pwd ; ant -f deploy.xml redeploy-app-no-ui ; popd'

# Fast redeploy assets
alias update-maps='cp $CODEBASE_HOME/ux/ui/assets/src/swf/maps/* $GLASSFISH_HOME/domains/domain1/applications/controller/controller-web_war/swf/maps'
alias update-images='cp -Rf $CODEBASE_HOME/ux/ui/assets/src/images/* $GLASSFISH_HOME/domains/domain1/applications/controller/controller-web_war/images'
alias update-svg='cp -Rf $CODEBASE_HOME/ux/ui/assets/src/svg/* $GLASSFISH_HOME/domains/domain1/applications/controller/controller-web_war/svg'
alias update-swf='cp $CODEBASE_HOME/ux/ui/assets/src/swf/* $GLASSFISH_HOME/domains/domain1/applications/controller/controller-web_war/swf'
alias update-web.xml='cp $CODEBASE_HOME/controller/controller-web/src/content/WEB-INF/web.xml $GLASSFISH_HOME/glassfish/domains/domain1/applications/controller/controller-web_war/WEB-INF/web.xml'

# aclean
alias aclean-deploy='/bin/rm -Rf ~/work/appDynamics*/*-tmp ; /bin/rm -Rf ~/work/appDynamics*/dbagent ; /bin/rm -Rf ~/work/appDynamics*/eum-deploy ; /bin/rm -Rf ~/work/appDynamics*/webloadgen ; /bin/rm -Rf ~/work/appDynamics*/mobileloadgen ; /bin/rm -Rf ~/work/appDynamics*/activemq-data'

alias fr='ut pull-cart ; ut --instrument full-reset-with-all-apps ; sleep 600 ; kill-apps'
alias frc='ut pull-cart ; ut --clean --instrument full-reset-with-all-apps ; sleep 600 ; kill-apps'
#alias fr='ut pull-cart ; ut --instrument --saml full-reset-with-all-apps ; sleep 600 ; kill-apps'
#alias frc='ut pull-cart ; ut --clean --instrument --saml full-reset-with-all-apps ; sleep 600 ; kill-apps'

#ln -s ~/Library/Application\ Support/IntelliJIdea13/jr-ide-idea/lib/jrebel ./jrebel-home
#alias setup ln -s ~/"Library/Application Support/IdeaIC13/jr-ide-idea/lib/jrebel ./jrebel-home" 

alias deploy-ui-styles='pushd $UI_HOME; $CODEBASE_HOME/gradlew compileSass; cp -rf $UI_HOME/build/web/css/* $WEB_DEPLOY_HOME/css ; popd'
alias deploy-ui-resources='pushd $UI_HOME; $CODEBASE_HOME/gradlew compileResourceManager; cp -vf $UI_HOME/build-debug/web/shared/services/ResourceManager.js $WEB_DEPLOY_HOME/shared/services/'

#================================================================================
# start / stop various components
#================================================================================

#--------------------------------------------------------------------------------
# controller
#--------------------------------------------------------------------------------

#alias restart-appserver='pushd $CONT_APP_HOME ; pwd ; gradle restart-appserver ; popd'
#alias stop-appserver='pushd $CONT_APP_HOME ; pwd ; gradle stop-appserver ; popd'
#alias start-appserver='pushd $CONT_APP_HOME ; pwd ; gradle start-appserver ; popd'

#--------------------------------------------------------------------------------
# db
#--------------------------------------------------------------------------------

#alias stop-dbserver='pushd $CONT_APP_HOME ; pwd ; gradle stop-dbserver ; popd'
#alias start-dbserver='pushd $CONT_APP_HOME ; pwd ; gradle start-dbserver ; popd'

#--------------------------------------------------------------------------------
# Cart
#--------------------------------------------------------------------------------

#alias load-cart='pushd $CODEBASE_HOME/../cart ; ant run-jmeter-test-forever & ; popd'
#alias start-cart-with-load='start-cart ; load-cart'
#alias start-cart='pushd $CODEBASE_HOME/../cart ; ant clean install-cart start-cart ; popd'
#alias stop-cart='pushd $CODEBASE_HOME/../cart ; ant stop-cart ; popd'

#--------------------------------------------------------------------------------
# EUM
#--------------------------------------------------------------------------------

#alias start-cloud="pushd $CODEBASE_HOME/eum-cloud ; ./cloud -v run ; popd"
#alias stop-cloud='pushd $CODEBASE_HOME/eum-cloud ; ./cloud stop ; popd'
#alias start-shepherd='tn "Starting synthetic-shepherd" ; $CODEBASE_HOME/eum-cloud/tools/eum-tools createDevProperties ; pushd $CODEBASE_HOME/eum/synthetic/synthetic-shepherd ; ./shepherd run ; popd'

#alias disable-eum-license='asadmin create-jvm-options -Dappdynamics.controller.internal.devonly.eum.license.file.read.enabled=false'
#alias enable-cors='sed -i.orig -e "s:ADRUM.EXT.isCORSSupported = false:ADRUM.EXT.isCORSSupported = true:" $CODEBASE_HOME/agent/rum/js/adrum-ext.js'

#alias start-mobileloadgen='tn "start-mobileloadgen" ; $CODEBASE_HOME/eum-cloud/tools/eum-tools startMobileLoadgen'
#alias start-webloadgen='tn "start-webloadgen" ; $CODEBASE_HOME/eum-cloud/tools/eum-tools startWebLoadgen'
#alias start-loadgen='tn "Creating loadgen app in controller and starting web and mobile load generators." ; $CODEBASE_HOME/eum-cloud/tools/eum-tools startLoadgenOnPrem'
#alias start-eumprocessor='tn "Starting EUM (on-prem)..." ; $CODEBASE_HOME/eum-cloud/tools/eum-tools startEumProcessor'

#--------------------------------------------------------------------------------
# Analytics
#--------------------------------------------------------------------------------

#alias start-analytics-processor='tn "Starting analyics processor..." ; cd $CODEBASE_HOME/analytics/analytics-processor ; gradle clean installApp ; cd $CODEBASE_HOME/analytics/analytics-processor/build/install/analytics-processor ; bin/analytics-processor start -y conf/analytics-all.yml -p conf/analytics-all.properties'
#alias register-analytics-account='tn "Registering eum accounts with analytics..." ; $CODEBASE_HOME/eum-cloud/tools/eum-tools createDevProperties ; pushd $CODEBASE_HOME/eum-cloud ; gradle deploy-dev ; cd $CODEBASE_HOME/../eum-deploy/admin; chmod +x bin/local-admin.sh; bin/local-admin.sh register-analytics-account'
alias registerAnalyticsAccount='cd $CODEBASE_HOME ; cd ../eum-deploy/bin ; sh ./local-admin.sh register-analytics-account osxltjange'

#alias start-ap='start-analytics-processor'
#alias register-aa='register-analytics-account'

#--------------------------------------------------------------------------------
# kill
#--------------------------------------------------------------------------------

#alias kill-aggregator='tn "kill-aggregator" ; kill -9 `jps | grep EUMAggregatorServer | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-analyticsprocessor='tn "kill-analyticsprocessor" ; kill -9 `jps | grep AnalyticsService | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-appserver='tn "kill-appserver" ; kill -9 `jps | grep ASMain | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-cart-load='tn "kill-cart-load" ; kill -9 `jps | grep Launcher.jar | awk "{ print $2 }"` > /dev/null 2>&1 ; kill -9 `jps | grep ApacheJMeter.jar | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-cart-mq='tn "kill-cart-mq" ; kill -9 `jps | grep run.jar | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-cart-tomcat='tn "kill-cart-tomcat" ; kill -9 `jps | grep Bootstrap | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-cart='tn "kill-cart" ; kill-cart-tomcat ; kill-cart-mq ; kill-cart-load'
#alias kill-collector='tn "kill-collector" ; kill -9 `jps | grep EUMCollectorServer | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-controller='kill-appserver'
#alias kill-glassfish='kill-appserver'
#alias kill-crashprocessor='tn "kill-crashprocessor" ; kill -9 `jps | grep EUMCrashProcessorServer | awk "{ print $2 }"`  > /dev/null 2>&1'
#alias kill-eumprocessor='tn "kill-eumprocessor" ; kill -9 `jps | grep EUMProcessorServer | awk "{ print $2 }"`  > /dev/null 2>&1'
#alias kill-glassfish='kill-appserver'
alias kill-gradle='tn "kill-gradle" ; kill -9 `jps | grep GradleDaemon | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-loadgen='kill-mobileloadgen ; kill-webloadgen'
#alias kill-machineagent='tn "kill-machineagent" ; kill -9 `jps | grep machineagent.jar | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-mobileloadgen='tn "kill-mobile-loadgen" ; kill -9 `jps | grep -v ASMain | grep -v GradleMain | grep Main | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-mysql='tn "kill-mysql" ; pkill mysql > /dev/null 2>&1'
#alias kill-shepherd='tn "kill-shepherd" ; kill -9 `jps | grep SynthShepherdApplication | awk "{ print $2 }"` > /dev/null 2>&1'
#alias kill-webloadgen='tn "kill-webloadgen" ; kill -9 `jps | grep EUMLoadGenerator | awk "{ print $2 }"` > /dev/null 2>&1'

#alias kill-all='kill-shepherd;kill-mobileloadgen;kill-webloadgen;kill-eumprocessor;kill-analyticsprocessor;kill-crashprocessor;kill-collector;kill-aggregator;kill-appserver;kill-mysql;kill-machineagent;kill-cart'

#--------------------------------------------------------------------------------
# status
#--------------------------------------------------------------------------------

#alias status-aggregator='if [ $(jps | grep -e "EUMAggregatorServer" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] aggregator"; else echo "[Y] aggregator"; fi'
#alias status-analyticsprocessor='if [ $(jps | grep -e "AnalyticsService" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] analyticsprocessor"; else echo "[Y] analyticsprocessor"; fi'
#alias status-cart-load='if [ $(jps | grep -e "Launcher.jar" | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] cart-load"; else echo "[Y] cart-load"; fi'
#alias status-cart-mq='if [ $(jps | grep -e "run.jar" | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] cart-mq"; else echo "[Y] cart-mq"; fi'
#alias status-cart-tomcat='if [ $(jps | grep -e Bootstrap | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] cart-tomcat"; else echo "[Y] cart-tomcat"; fi'
#alias status-cart='status-cart-load ; status-cart-mq ; status-cart-tomcat'
#alias status-collector='if [ $(jps | grep -e "EUMCollectorServer" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] collector"; else echo "[Y] collector"; fi'
#alias status-controller='if [ $(jps | grep -e "ASMain" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] controller"; else echo "[Y] controller"; fi'
#alias status-crashprocessor='if [ $(jps | grep -e "EUMCrashProcessorServer" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] crashprocessor"; else echo "[Y] crashprocessor"; fi'
#alias status-eumprocesor='if [ $(jps | grep -e "EUMProcessorServer" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] eumprocessor"; else echo "[Y] eumprocessor"; fi'
#alias status-eumprocesor='if [ $(jps | grep -e "EUMProcessorServer" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] eumprocessor"; else echo "[Y] eumprocessor"; fi'
#alias status-machineagent='if [ $(jps | grep -e machineagent.jar | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] machineagent"; else echo "[Y] machineagent"; fi'
#alias status-mobileloadgen='if [ $(jps | grep -v ASMain | grep -v GradleMain | grep -e "Main" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] mobileloadgen"; else echo "[Y] mobileloadgen"; fi'
#alias status-mysql='if [ $(ps -ef | grep -e mysql | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] mysql"; else echo "[Y] mysql"; fi'
#alias status-shepherd='if [ $(jps | grep -e "SynthShepherdApplication" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] shepherd"; else echo "[Y] shepherd"; fi'
#alias status-webloadgen='if [ $(jps | grep -e "EUMLoadGenerator" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]; then echo "[N] webloadgen"; else echo "[Y] webloadgen"; fi'
#
#alias status-all='status-controller ; status-mysql ; status-machineagent; status-eumprocesor ; status-analyticsprocessor ; status-shepherd ; status-aggregator ; status-collector ; status-crashprocessor ; status-webloadgen ; status-mobileloadgen ; status-cart'
#alias status='status-all'

#--------------------------------------------------------------------------------
# teardown - clean up deployed things, like controller-tmp, eum-deploy
#--------------------------------------------------------------------------------

#alias teardown-cart='/bin/rm -Rf $CODEBASE_HOME/../cart-tmp ; /bin/rm -Rf $CODEBASE_HOME/../activemq-data'
#alias teardown-controller='/bin/rm -Rf $CODEBASE_HOME/../controller-tmp'
#alias teardown-controller-installer='/bin/rm -Rf $CODEBASE_HOME/../controller-installer'
#alias teardown-eum='/bin/rm -Rf $CODEBASE_HOME/../eum-deploy'
#alias teardown-mobileloadgen='/bin/rm -Rf $CODEBASE_HOME/../mobileloadgen'
#alias teardown-webloadgen='/bin/rm -Rf $CODEBASE_HOME/../webloadgen'
#alias teardown-all='tn "full-teardown"  ; teardown-cart ; teardown-controller ; teardown-controller-installer ; teardown-eum ; teardown-mobileloadgen ; teardown-webloadgen'

#================================================================================
# Chains for building
#
# These are single commands to do reliable complete builds after 'git pull'
#================================================================================


#alias start-timer-full-reset='tns "Start Full Reset"'
#alias stop-timer-full-reset='tns "Stop Full Reset"'

#alias start-timer-full-reset-with-all-apps='tns "Start Full Reset with all apps"'
#alias stop-timer-full-reset-with-all-apps='tns "Stop Full Reset with all apps"'

#--------------------------------------------------------------------------------
# full-reset
#
# [1] 'kill-all' (glassfish, mysql, eum cloud components, analytics processor, loadgen, cart)
# [2] 'gradle clean' in $CODEBASE_HOME
# [3] 'gradle setup' in controller-app
# [4] 'gradle reset' in controller-app
# [5] 'start-eumprocessor'
# [6] 'start-analytics-processor'
# [X] 'start-shepherd' - disabled for now
#--------------------------------------------------------------------------------

#alias full-reset='start-timer-full-reset; tn "[1/7] kill-all" ; kill-all ; full-teardown ; tn "[2/7] cd $CODEBASE_HOME ; gradle --info clean" ; pushd $CODEBASE_HOME ; gradle --info clean ; tn "[3/7] gradle --info setup" ; gradle --info setup ;  create-custom-properties ; tn "[4/7] gradle --info reset -PinstrumentController=true" ; gradle --info reset -PinstrumentController=true ; tn "[5/7] start-eumprocessor" ; start-eumprocessor ; tn "[6/7] start-analytics-processor ; register-analytics-account " ; start-analytics-processor ; register-analytics-account ; tn "[7/7] start-shepherd" ; stop-timer-full-reset ; popd'

#--------------------------------------------------------------------------------
# full-reset-with-all-apps
#
# All steps as above, but also start 
# 1. Cart (wihout load)
# 2. loadgen with mobile and web data
#--------------------------------------------------------------------------------

#alias full-reset-with-all-apps='start-timer-full-reset-with-all-apps ; full-reset ; start-loadgen ; start-cart ; stop-timer-full-reset-with-all-apps'

#================================================================================
# Private
#================================================================================

#alias km='kill-mobileloadgen'
#alias kw='kill-webloadgen'
#alias kap='kill-analyticsprocessor'
#alias kcp='kill-crash-processor'o.
#alias kc='kill-collector'
#alias kg='kill-gradle'
#alias ka='kill-aggregator'
#alias kas='kill-appserver'

case $OSTYPE in
    linux-gnu)
        alias emacs='emacs'
	    alias enw='emacs --no-init-file -nw'
	    alias e='emacsclient --no-wait'
        alias sa='source ~/Dropbox/dotalias.bash'

	;;
    darwin*)
	    alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
	    alias enw='/Applications/Emacs.app/Contents/MacOS/Emacs --no-init-file -nw'
	    alias e='$EDITOR'
        alias lockDock='defaults write com.apple.Dock contents-immutable -bool yes ; killall Dock'
        alias unlockDock='defaults write com.apple.Dock contents-immutable -bool no ; killall Dock'
        alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles TRUE ; killall Finder'
        alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles FALSE ; killall Finder'
        alias downloads='cd ~/Downloads'
        alias dropbox='cd ~/Dropbox'
        alias ldd='otool -L'
        alias textboot='nvram boot-args="-v"'
        alias guiboot='nvram boot-args='
        alias pop='afplay /System/Library/Sounds/Pop.aiff'
        alias basso='afplay /System/Library/Sounds/Basso.aiff'
        alias glass='afplay /System/Library/Sounds/Glass.aiff'
	;;

    cygwin)
        alias e='/cygdrive/c/Users/jangeles/dev/emacs-23.1/bin/emacsclientw.exe -n'
        alias sa='source ~/Dropbox/dotalias.bash'

        ;;
esac

#alias tn='NOW=`date` ; /Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier -title "$NOW" -message  '

alias tn='/Users/jangeles/work/developer-productivity/ui/bin/terminal-notifier.app/Contents/MacOS/terminal-notifier -title "$NOW" -message  '
alias tns='/Users/jangeles/work/developer-productivity/ui/bin/terminal-notifier.app/Contents/MacOS/terminal-notifier -sticky -title "$NOW" -message  '

# Switch current codebases
alias ad1='cd ~/work/appDynamics1 ; export APP_DYNAMICS_HOME=~/work/appDynamics1 ; source ~/work/appDynamics1/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/appDynamics1/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-Xmx1280m" ; export GRADLE_OPTS="-Xmx1280m" ; source ~/work/appDynamics1/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/jaenv/dotalias.bash ; export BASEPATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/appDynamics1/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME:$CODEBASE_HOME/tools:$CODEBASE_HOME/automation/docker:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics1/controller ; rm -f /usr/local/bin/gradlew ; ln -s $CODEBASE_HOME/controller/gradlew /usr/local/bin ; pwd ; gitb '

#alias ad1='cd ~/work/appDynamics1 ; export APP_DYNAMICS_HOME=~/work/appDynamics1 ; source ~/work/appDynamics1/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/appDynamics1/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-Xmx1280m" ; export GRADLE_OPTS="-Xmx1280m" ; source ~/work/appDynamics1/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/appDynamics1/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME:$CODEBASE_HOME/tools:$CODEBASE_HOME/automation/docker:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics1/codebase ; rm -f /usr/local/bin/gradlew ; ln -s $CODEBASE_HOME/gradlew /usr/local/bin ; pwd ; gitb '
alias ad2='cd ~/work/appDynamics2 ; export APP_DYNAMICS_HOME=~/work/appDynamics2 ; source ~/work/appDynamics2/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/appDynamics2/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-Xmx2280m" ; export GRADLE_OPTS="-Xmx2280m" ; source ~/work/appDynamics2/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/appDynamics2/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME:$CODEBASE_HOME/tools:$CODEBASE_HOME/automation/docker:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS2="\\w:\\#> " ; cd ~/work/appDynamics2/codebase ; rm -f /usr/local/bin/gradlew ; ln -s $CODEBASE_HOME/gradlew /usr/local/bin ;pwd ; gitb '
alias ad3='cd ~/work/appDynamics3 ; export APP_DYNAMICS_HOME=~/work/appDynamics3 ; source ~/work/appDynamics3/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/appDynamics3/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-Xmx3280m" ; export GRADLE_OPTS="-Xmx3280m" ; source ~/work/appDynamics3/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/appDynamics3/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME:$CODEBASE_HOME/tools:$CODEBASE_HOME/automation/docker:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS3="\\w:\\#> " ; cd ~/work/appDynamics3/codebase ; rm -f /usr/local/bin/gradlew ; ln -s $CODEBASE_HOME/gradlew /usr/local/bin ;pwd ; gitb '
alias ad4='cd ~/work/appDynamics4 ; export APP_DYNAMICS_HOME=~/work/appDynamics4 ; source ~/work/appDynamics4/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/appDynamics4/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-Xmx4280m" ; export GRADLE_OPTS="-Xmx4280m" ; source ~/work/appDynamics4/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/appDynamics4/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME:$CODEBASE_HOME/tools:$CODEBASE_HOME/automation/docker:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS4="\\w:\\#> " ; cd ~/work/appDynamics4/codebase ; rm -f /usr/local/bin/gradlew ; ln -s $CODEBASE_HOME/gradlew /usr/local/bin ;pwd ; gitb '
alias ad5='cd ~/work/appDynamics5 ; export APP_DYNAMICS_HOME=~/work/appDynamics5 ; source ~/work/appDynamics5/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/appDynamics5/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-Xmx5280m" ; export GRADLE_OPTS="-Xmx5280m" ; source ~/work/appDynamics5/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/appDynamics5/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME:$CODEBASE_HOME/tools:$CODEBASE_HOME/automation/docker:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS5="\\w:\\#> " ; cd ~/work/appDynamics5/codebase ; rm -f /usr/local/bin/gradlew ; ln -s $CODEBASE_HOME/gradlew /usr/local/bin ;pwd ; gitb '


#alias ad3='cd ~/work/appDynamics3 ; export APP_DYNAMICS_HOME=~/work/appDynamics3 ; source ~/work/appDynamics3/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/appDynamics3/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1280m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1280m" ; source ~/work/appDynamics3/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/appDynamics3/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/automation/docker:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics3/codebase ; pwd ; gitb '
#alias ad4='cd ~/work/appDynamics4 ; export APP_DYNAMICS_HOME=~/work/appDynamics4 ; source ~/work/appDynamics4/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/appDynamics4/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1280m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1280m" ; source ~/work/appDynamics4/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/appDynamics4/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/automation/docker:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics4/codebase ; pwd ; gitb '
#alias ad5='cd ~/work/appDynamics5 ; export APP_DYNAMICS_HOME=~/work/appDynamics5 ; source ~/work/appDynamics5/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/appDynamics5/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1280m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1280m" ; source ~/work/appDynamics5/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/appDynamics5/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/automation/docker:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics5/codebase ; pwd ; gitb '

# BEFORE REMOVING SCRIPTS
#alias ad1='cd ~/work/appDynamics1 ; export APP_DYNAMICS_HOME=~/work/appDynamics1 ; source ~/work/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-Xmx1024m" ; export GRADLE_OPTS="-Xmx1024m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics1/codebase ; pwd ; gitb '
#alias ad2='cd ~/work/appDynamics2 ; export APP_DYNAMICS_HOME=~/work/appDynamics2 ; source ~/work/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-Xmx1024m" ; export GRADLE_OPTS="-Xmx1024m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics2/codebase ; pwd ; gitb '
#alias ad3='cd ~/work/appDynamics3 ; export APP_DYNAMICS_HOME=~/work/appDynamics3 ; source ~/work/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics3/codebase ; pwd ; gitb '
#alias ad4='cd ~/work/appDynamics4 ; export APP_DYNAMICS_HOME=~/work/appDynamics4 ; source ~/work/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics4/codebase ; pwd ; gitb '
#alias ad5='cd ~/work/appDynamics5 ; export APP_DYNAMICS_HOME=~/work/appDynamics5 ; source ~/work/developer-productivity/ui/bin/init.sh ; set-eum ; source ~/work/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics5/codebase ; pwd ; gitb '

# JAVA 7
#alias ad1='cd ~/work/appDynamics1 ; export APP_DYNAMICS_HOME=~/work/appDynamics1 ; source ~/work/developer-productivity/ui/bin/init.sh ; source ~/work/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics1/codebase ; pwd ; gitb '
#alias ad2='cd ~/work/appDynamics2 ; export APP_DYNAMICS_HOME=~/work/appDynamics2 ; source ~/work/developer-productivity/ui/bin/init.sh ; source ~/work/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics2/codebase ; pwd ; gitb '
#alias ad3='cd ~/work/appDynamics3 ; export APP_DYNAMICS_HOME=~/work/appDynamics3 ; source ~/work/developer-productivity/ui/bin/init.sh ; source ~/work/developer-productivity/ui/bin/setJdkBasedOnBranch.sh ; export ANT_OPTS="-XX:MaxPermSize=138M -Xmx1034m" ; export GRADLE_OPTS="-XX:MaxPermSize=138M -Xmx1034m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export BASEPATH=~jangeles/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/git/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/sdk/platform-tools:$ANDROID_HOME/sdk/tools:$MVN_HOME/bin:~/dev/mysql/bin:~/work/developer-productivity/ui/bin ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics3/codebase ; pwd ; gitb '


#alias ad1='cd ~/work/appDynamics1 ; export APP_DYNAMICS_HOME=~/work/appDynamics1 ; source ~/work/developer-productivity/ui/bin/init.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS1="\\w:\\#> " ; cd ~/work/appDynamics1/codebase ; pwd ; gitb '
#alias ad2='cd ~/work/appDynamics2 ; export APP_DYNAMICS_HOME=~/work/appDynamics2 ; source ~/work/developer-productivity/ui/bin/init.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS2="\\w:\\#> " ; cd ~/work/appDynamics2/codebase ; pwd ; gitb '
#alias ad3='cd ~/work/appDynamics3 ; export APP_DYNAMICS_HOME=~/work/appDynamics3 ; source ~/work/developer-productivity/ui/bin/init.sh ; export ANT_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; export GRADLE_OPTS="-XX:MaxPermSize=128M -Xmx1024m" ; source ~/work/developer-productivity/ui/bin/ui-tools-aliases.sh ; source ~/Dropbox/dotalias.bash ; export PATH=.:$CODEBASE_HOME/tools:$CODEBASE_HOME/ux/ui/view-main/src/scripts:$MYSQL_HOME/bin:$GLASSFISH_HOME/bin:$BASEPATH ; export PS3="\\w:\\#> " ; cd ~/work/appDynamics3/codebase ; pwd ; gitb '

alias a-teardown='ad1 ; teardown-all ; ad2 ; teardown-all ; ad3 ; teardown-all ; ad4 ; teardown-all ; ad5 ; teardown-all'


alias running='ps -ef | grep ASMain | grep -v launchctl | awk "{ print \$10 }" | grep -v -e "^\$" | sed -e "s:/Users/jangeles/work/::" -e "s:/controller-tmp/glassfish/glassfish/modules/glassfish.jar::"'

# Setup my custom-properties in controller.app
#alias create-custom-properties="echo 'start-glassfish-in-debug-mode=true' > $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.internal.devonly.eum.license.file.read.enabled=false' >> $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.eum.cloud.hostName=http\\\\://localhost\\\\:7001' >> $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.eum.beacon.hostName=localhost\\\\:9001' >> $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.eum.adrumextension.urltemplate=localhost:8080' >> $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.eum.analytics.client.type=rest' >> $CODEBASE_HOME/controller/controller-app/custom.properties ; echo 'appdynamics.controller.eum.analytics.service.hostName=localhost\\\\:9080' >> $CODEBASE_HOME/controller/controller-app/custom.properties"

# Show the status of all codebases
alias a_1='cd ~/work/appDynamics1/codebase ; echo -n `pwd | tr -d '\n'` ; echo -n " --> " ; git rev-parse --sq --abbrev-ref HEAD ; git rev-parse --abbrev-ref --symbolic-full-name @{u}'
alias a_2='cd ~/work/appDynamics2/codebase ; echo -n `pwd | tr -d '\n'` ; echo -n " --> " ; git rev-parse --sq --abbrev-ref HEAD ; git rev-parse --abbrev-ref --symbolic-full-name @{u}'
alias a_3='cd ~/work/appDynamics3/codebase ; echo -n `pwd | tr -d '\n'` ; echo -n " --> " ; git rev-parse --sq --abbrev-ref HEAD ; git rev-parse --abbrev-ref --symbolic-full-name @{u}'
alias a_4='cd ~/work/appDynamics4/codebase ; echo -n `pwd | tr -d '\n'` ; echo -n " --> " ; git rev-parse --sq --abbrev-ref HEAD ; git rev-parse --abbrev-ref --symbolic-full-name @{u}'
alias a_5='cd ~/work/appDynamics5/codebase ; echo -n `pwd | tr -d '\n'` ; echo -n " --> " ; git rev-parse --sq --abbrev-ref HEAD ; git rev-parse --abbrev-ref --symbolic-full-name @{u}'
alias a='pushd $PWD > /dev/null ; a_1;a_2;a_3;a_4;a_5 ; popd > /dev/null'

alias aold='pushd $PWD ; ad1 | grep origin ; ad2 | grep origin ; ad3 | grep origin ; popd'

# Show timestamp on swf files
alias swf='pushd $CODEBASE_HOME/../controller-tmp/glassfish/glassfish/domains/domain1/applications/controller/controller-web_war ; ls -l Main*.swf ; popd ; date'

# private search commands
alias s='~/bin/sources | grep '
alias x='~/bin/sources | grep '

alias ignore-idea='git update-index --assume-unchanged $CODEBASE_HOME/.idea/codeStyleSettings.xml'
alias unignore-idea='git update-index --no-assume-unchanged $CODEBASE_HOME/.idea/codeStyleSettings.xml'

#if [ "$HOSTNAME" == "osxltjange-old.corp.appdynamics.com" ] || [ "$HOSTNAME" == "osxltjange-old.local" ]
#then
#    export EUM_ACCOUNT=osxltjango
#    export EUM_APP_KEY_PREFIX=JANGO
#else
#    export EUM_ACCOUNT=osxltjange
#    export EUM_APP_KEY_PREFIX=JANGE
#fi

#alias restart-appserver='pushd $CONT_APP_HOME ; pwd ; gradle restart-appserver ; popd'
#alias trpt='open $CODEBASE_HOME/controller/controller-tests/dist/testreports/index.html'
#alias ctest='pushd $CODEBASE_HOME/controller/controller-tests ; ant ; popd'
#alias stest='pushd $CODEBASE_HOME/controller/controller-tests ; ant run-single -Dtestcase=EUMCloudManagerTest; popd'
#alias host-adrumext-in-mockcollector='pushd $CODEBASE_HOME/agent/rum ; ant ; unzip -o dist/adrum-ext.zip ; mv ./adrum-ext.*.js $CODEBASE_HOME/agent/rum/mockcoll/wwwroot ; popd'
#alias host-adrumext-in-rct='pushd $CODEBASE_HOME/agent/rum ; ant ; unzip -o dist/adrum-ext.zip ; mv ./adrum-ext.*.js $CODEBASE_HOME/agent/rum/component-tests/wwwroot ; popd'
alias host-adrumext-in-controller1='pushd $CODEBASE_HOME/agent/rum ; ant ; unzip -o dist/adrum-ext.zip ; mv ./adrum-ext.*.js $WEB_DEPLOY_HOME ; popd'
alias host-adrumext-in-controller2='asadmin delete-jvm-options -Dappdynamics.controller.eum.adrumextension.urltemplate=de8of677fyt0b.cloudfront.net ; asadmin create-jvm-options -Dappdynamics.controller.eum.adrumextension.urltemplate=localhost\\:8080/controller'
alias host-adrumext-in-controller='host-adrumext-in-controller1 ; host-adrumext-in-controller2'
#alias start-mockcollector='host-adrumext-in-mockcollector ; cat $CODEBASE_HOME/agent/rum/mockcoll/src/main/resources/adrum.js.properties ; pushd $CODEBASE_HOME/agent/rum/mockcoll ; ./gradlew runWithAgent ; popd'
#alias start-rct='host-adrumext-in-rct ; cat $CODEBASE_HOME/agent/rum/component-tests/src/main/resources/adrum.js.properties ; pushd $CODEBASE_HOME/agent/rum/component-tests ; gradle runWithAgent ; popd'
#alias adrum.js.properties='$EDITOR $CODEBASE_HOME/agent/rum/mockcoll/src/main/resources/adrum.js.properties'
#alias mockcoll.properties='$EDITOR $CODEBASE_HOME/agent/rum/mockcoll/src/main/resources/adrum.js.properties'
#alias start-emulator='emulator -avd joesavd'
#alias log-emulator='adb -e logcat ADInstrumentation'
# Use a local aggregator; Use the dev aggregator
#alias use-local-collector='asadmin delete-jvm-options -Dappdynamics.controller.eum.cloud.hostName=col.eum-appdynamics.com ; asadmin create-jvm-options -Dappdynamics.controller.eum.beacon.hostName=localhost\\:9001'
#alias use-local-aggregator='asadmin delete-jvm-options -Dappdynamics.controller.eum.cloud.hostName=agg.eum-appdynamics.com ; asadmin create-jvm-options -Dappdynamics.controller.eum.cloud.hostName=http\\://localhost\\:7001'

#alias use-local-collector='asadmin delete-jvm-options -Dappdynamics.controller.eum.beacon.hostName=col.eum-appdynamics.com ; asadmin create-jvm-options -Dappdynamics.controller.eum.beacon.hostName=localhost\\:9001'
#alias use-local-aggregator='asadmin delete-jvm-options -Dappdynamics.controller.eum.cloud.hostName=agg.eum-appdynamics.com ; asadmin create-jvm-options -Dappdynamics.controller.eum.cloud.hostName=http\\://localhost\\:7001'
#alias use-dev-collector='asadmin delete-jvm-options -Dappdynamics.controller.eum.beacon.hostName=localhost\\:9001 ; asadmin create-jvm-options -Dappdynamics.controller.eum.cloud.hostName=col.eum-appdynamics.com'
#alias use-dev-aggregator='asadmin delete-jvm-options -Dappdynamics.controller.eum.cloud.hostName=http\\://localhost\\:7001 ; asadmin create-jvm-options -Dappdynamics.controller.eum.cloud.hostName=agg.eum-appdynamics.com'
# Use a local eum-cloud (aggregator + collector)
#alias use-local-cloud='use-local-aggregator;use-local-collector'
# Use a dev eum-cloud (aggregator + collector)
#alias use-dev-cloud='use-dev-aggregator;use-dev-collector'
# Turn on the feature flag for mobile
#alias enable-mobile='asadmin delete-jvm-options -Dappdynamics.controller.eum.mobile.enabled=false ; asadmin create-jvm-options -Dappdynamics.controller.eum.mobile.enabled=true'
# Turn off the feature flag for mobile
#alias disable-mobile='asadmin delete-jvm-options -Dappdynamics.controller.eum.mobile.enabled=true ; asadmin create-jvm-options -Dappdynamics.controller.eum.mobile.enabled=false'
# Disable eum license account
# Build shortcuts
#alias redeploy-web-debug='pushd $UI_HOME ; pwd ; ant redeploy-web-debug ; popd ; tn "redeploy-web-debug complete"'
#alias rwd='pushd $UI_HOME ; pwd ; ant redeploy-web-debug-keep-swf ; popd ; tn "redeploy-web-debug-keep-swf complete"'
#alias cta='pushd $UI_HOME ; pwd ; ant compile-typescript-app ; popd ; tn "compile-typescript-app complete"'
#alias redeploy-web='pushd $UI_HOME ; pwd ; ant redeploy-web-debug ; popd'
#alias redeploy-test='pushd $UI_HOME ; pwd ; ant redeploy-test ; popd'
#alias compile-sass='pushd $UI_HOME ; pwd ; ant compile-sass ; popd'
#alias compile-typescript='pushd $UI_HOME ; pwd ; ant compile-typescript ; popd'
#alias compile-resource-manager='pushd $UI_HOME ; pwd ; ant compile-resource-manager ; popd'
#alias compile-web='pushd $UI_HOME ; pwd ; ant compile-web ; popd'
#alias redeploy-no-ui='pushd $CODEBASE_HOME/controller/controller-app ; pwd ; ant -f deploy.xml redeploy-app-no-ui ; popd'
#alias clean='rm -Rf $CODEBASE_HOME/../QA $CODEBASE_HOME/../cart-tmp $CODEBASE_HOME/../cart-common $CODEBASE_HOME/../controller-tmp $CODEBASE_HOME/../activemq-data ; rm -Rf $CODEBASE_HOME/../eum-deploy'
#alias update-maps='cp $CODEBASE_HOME/ux/ui/assets/src/swf/maps/* $GLASSFISH_HOME/domains/domain1/applications/controller/controller-web_war/swf/maps'
#alias update-swf='cp $CODEBASE_HOME/ux/ui/assets/src/swf/* $GLASSFISH_HOME/domains/domain1/applications/controller/controller-web_war/swf'
#alias update-web.xml='cp $CODEBASE_HOME/controller/controller-web/src/content/WEB-INF/web.xml $GLASSFISH_HOME/glassfish/domains/domain1/applications/controller/controller-web_war/WEB-INF/web.xml'



#Replace
#alias startCart='goCart; git pull; ant stop-cart ; ant install-cart ; ant run-jmeter-forever'

#alias ndebug='mysql --user=controller --password=controller --database=controller  <<< "select \"Mobile Devices\" as \"\" ; select * from mobile_device ; select * from user_mobile_device_mapping ; select * from user_application_mobile_device_mapping ; select * from push_notification_config"'

alias mobile_device='mysql --user=controller --password=controller --database=controller  <<< "select * from mobile_device"'
alias push_notification_config='mysql --user=controller --password=controller --database=controller  <<< "select * from push_notification_config"'
alias ndebug='echo -e "\nmobile_device" ; mobile_device ; echo -e "\npush_notification_config" ; push_notification_config'

alias nreset='mysql --user=controller --password=controller --database=controller  <<< "delete from push_notification_config ; delete from application_mobile_device_mapping ; delete from mobile_device"'

#alias install-eum-license-key-system='mysql --user=controller --password=controller --database=controller  <<< "update account set eum_cloud_license_key = \"39727cc0-df00-4fcb-a587-1c7c82b82b51\", eum_account_name = \"controller\", eum_license_allows_overages = true, eum_license_units = 100, eum_license_type = \"EUM_PRO\", mobile_license_allows_overages = true, mobile_license_units = 100, mobile_license_type = \"MOBILE_PRO\" where name = \"system\";"'
#alias install-eum-license-key-controller='mysql --user=controller --password=controller --database=controller  <<< "update account set eum_cloud_license_key = \"6ab27127-35ec-4919-8ada-b6b79f48ea84\", eum_account_name = \"controller\", eum_license_allows_overages = true, eum_license_units = 100, eum_license_type = \"EUM_PRO\", mobile_license_allows_overages = true, mobile_license_units = 100, mobile_license_type = \"MOBILE_PRO\" where name = \"system\";"'
#alias install-eum-license-keys='install-eum-license-key-user1;install-eum-license-key-system'
#alias enable-eum-for-controller='mysql --user=controller --password=controller --database=controller  <<< "update eum_configuration set enabled = true where id = 1; update account set expiration_date = (unix_timestamp(now())*1000 + (2*365*24*60*60*1000)) where id = 1;"'
#alias manually-inject-eum-for-controller='sed "s:<head>:<head><script>window[\"adrum-app-key\"] = \"JANGE-AAB-AVJ\";window[\"adrum-start-time\"] = new Date().getTime();</script><script src=\"/adrum.js\"></script>:" $CODEBASE_HOME/ux/ui/view-main/src/web/main.jsp > $WEB_DEPLOY_HOME/main.jsp'

#alias gaai='open http://localhost:7001/eumaggregator/info?cmd=getAllAccountInfo'
#alias gaai='curl -s http://localhost:7001/eumaggregator/info?cmd=getAllAccountInfo'
#alias buckets-loadgen='open http://localhost:7001/eumaggregator/info?cmd=getAllAgrBucketsInfo\&eumAppKey=JA2-AAB-AUM\&eumLicenseKey=bb51e75f-2fb5-499f-b413-fdf4c69fd1d8'
#alias bl='open http://localhost:7001/eumaggregator/info?cmd=getAllAgrBucketsInfo\&eumAppKey=JA2-AAB-AUM\&eumLicenseKey=bb51e75f-2fb5-499f-b413-fdf4c69fd1d8'
#Remove stuff I don't like
#unalias rebuildCartLite
#unalias rebuildCartLiteSystem
#unalias rebuildSystem
#unalias data
#unalias dataAll
# OS Specific



#alias stop-all
#alias stop-appserver
#alias stop-dbserver
# hosts

# timer


# Chains - building
#alias start-mobileloadgen='tn "start-mobileloadgen" ; $CODEBASE_HOME/eum-cloud/tools/eum-tools startMobileLoadgenOnPrem'
#alias start-webloadgen='tn "start-webloadgen" ; $CODEBASE_HOME/eum-cloud/tools/eum-tools startWebLoadgenOnPrem'
#alias start-loadgen='tn "Creating loadgen app in controller and starting web and mobile load generators." ; $CODEBASE_HOME/eum-cloud/tools/eum-too#ls startLoadgenOnPrem'

#alias start-eumprocessor='tn "Starting EUM (on-prem)..." ; $CODEBASE_HOME/eum-cloud/tools/eum-tools startEumProcessor'

#alias full-reset='start-timer-full-reset; tn "[1/7] kill-all" ; kill-all ; full-teardown ; tn "[2/7] cd $CODEBASE_HOME ; gradle --info clean" ; pushd $CODEBASE_HOME ; gradle --info clean ; tn "[3/7] gradle --info setup" ; gradle --info setup ;  create-custom-properties ; tn "[4/7] gradle --info reset -PinstrumentController=true" ; gradle --info reset -PinstrumentController=true ; tn "[5/7] start-eumprocessor" ; start-eumprocessor ; tn "[6/7] start-analytics-processor ; register-analytics-account " ; start-analytics-processor ; register-analytics-account ; tn "[7/7] start-shepherd" ; start-shepherd ; stop-timer-full-reset ; popd'

#alias full-reset-with-loadgen='full-reset ; start-loadgen'

#alias full-reset-with-all-apps='start-timer-full-reset-with-all-apps ; full-reset ; start-loadgen ; start-cart ; stop-timer-full-reset-with-all-apps'

# ; pushd $CODEBASE ; gradle --info clean ; cd $CONT_APP_HOME ; gradle --info reset -PinstrumentController=true ; tn -message "gradle clean reset -PinstrumentController=true finished" ; popd'

#alias reset='pushd $CODEBASE_HOME ; gradle --info clean ; cd $CONT_APP_HOME ; create-custom-properties ; gradle --info reset -PinstrumentController=true ; tn -message "gradle clean reset -PinstrumentController=true finished" ; popd'
#alias setup='pushd $CONT_APP_HOME; gradle --info setup ; tn -message "gradle setup finished" ; popd'
#alias redeploy='pushd $CONT_APP_HOME ; gradle --info redeploy ; tn -message "gradle redeploy finished" ; popd'
#alias teardown='pushd $CONT_APP_HOME ; gradle --info teardown ; tn -message "gradle teardown finished" ; popd'
#alias reset-with-loadgen='pushd ; kill-all ; clean ; setup ; cd $CODEBASE_HOME ; gradle clean ; create-custom-properties ; reset ; $CODEBASE_HOME/eum-cloud/tools/eum-tools setupOnPrem ; start-analytics-processor ; register-aa ; $CODEBASE_HOME/eum-cloud/tools/eum-tools startLoadgen ; start-shepherd ; popd'
#alias reset-with-loadgen-cloud='kill-all;clean;setup;create-custom-properties;reset;$CODEBASE_HOME/eum-cloud/tools/eum-tools createDevProperties;$CODEBASE_HOME/eum-cloud/cloud run;sleep 30;$CODEBASE_HOME/eum-cloud/tools/eum-tools setLicenseForAccountInController;sleep 15;$CODEBASE_HOME/eum-cloud/tools/eum-tools createLoadgen ; start-analytics-processor ; register-aa ; $CODEBASE_HOM/eum-cloud/tools/eum-tools startWebLoadgen ; $CODEBASE_HOME/eum-cloud/tools/eum-tools startMobileLoadgen ; start-shepherd'

# How to open a file in intellij, with the cursor at the given line


# gradle
alias gtasks='gradle -q tasks'
alias gr='gradle --info --stacktrace'
#alias gradle='gradle --info'
#alias gradle='gradle'

# eum
alias cloud='$CODEBASE_HOME/eum-cloud/cloud'
alias eet='e $CODEBASE_HOME/eum-cloud/tools/eum-tools'
alias et='$CODEBASE_HOME/eum-cloud/tools/eum-tools'
alias aws='cat $CODEBASE_HOME/eum-cloud/resources/AwsStoreProperties.dev.properties'

# cart
#alias start-cart='pushd $CODEBASE_HOME/../cart ; ant clean install-cart start-cart ; popd'
#alias stop-cart='pushd $CODEBASE_HOME/../cart ; ant stop-cart ; popd'

alias clean-controllerdump='/bin/rm -f $CODEBASE_HOME/controllerdump_*'
alias clean-customproperties='/bin/rm -f $CODEBASE_HOME/controller/controller-app/custom.properties_*'
alias clean-eum-yml='/bin/rm -f $CODEBASE_HOME/eum/eum-aws-store/dev-resources/eum-aws-store.yml_*'
alias clean-backups='clean-aws;clean-controllerdump;clean-customproperties;clean-eum-yml'

#
# ARCHIVE
#
#alias eum-reset-0='qclean;gsetup;create-custom-properties;greset;sleep 30;enable-mobile;use-local-cloud;disable-eum-license;restart-appserver;redeploy-web-debug;$CODEBASE_HOME/eum-cloud/tools/cloud-tools createDevProperties'
#alias geum-resetx='clean;gsetup;create-custom-properties;setup-aws;greset;sleep 30;enable-mobile;use-local-cloud;disable-eum-license;restart-appserver;redeploy-web-debug'
#alias geum-reset='kap;killall java;clean;gsetup;create-custom-properties;setup-aws;greset;sleep 30;enable-mobile;use-local-cloud;disable-eum-license;install-eum-license-key-user1;restart-appserver;redeploy-web-debug;cloud run'
#alias geum-reset-0='clean;gsetup;create-custom-properties;setup-aws;greset;sleep 30;enable-mobile;use-local-cloud;disable-eum-license;install-eum-license-key-user1;restart-appserver;redeploy-web-debug'
#alias eum-reset='clean;setup;reset;sleep 30;enable-mobile;use-local-cloud;disable-eum-license;install-eum-license-key-user1;host-adrumext-in-controller;enable-eum-for-controller;manually-inject-eum-for-controller;restart-appserver;redeploy-web-debug'
#alias eum-reset='clean;setup;reset;sleep 30;enable-mobile;use-local-cloud;host-adrumext-in-controller;enable-eum-for-controller;manually-inject-eum-for-controller;restart-appserver;redeploy-web-debug'
#alias mc='cd $CODEBASE_HOME/agent/rum/mockcoll'
#alias ctmp='cd $CONTROLLER_TMP'
#alias agent='cd $CODEBASE_HOME/agent'
#alias rum='cd $CODEBASE_HOME/agent/rum'
#alias buckets='curl "http://test2-aggregator-1297016346.us-east-1.elb.amazonaws.com/eumaggregator/info?cmd=getAllAgrBucketsInfo&eumAppKey=b1aeeeb3-d67e-4861-abfc-116c8a26038b&eumLicenseKey=d2a89c88-ce0a-4858-adfb-c376d81d2f75"'
#alias jp='ps -ef | grep java'
#alias schema='e $CODEBASE_HOME/controller/controller-dbschema/src/sql/mysql/create-schema.sql'
#alias mockcoll='cd $CODEBASE_HOME/agent/rum/mockcoll'
#alias kap='$CODEBASE_HOME/tools/kill_appdynamics_process'
#alias psj='ps -ef | grep java'
#alias adp='e $CODEBASE_HOME/eum-cloud/resources/AwsStoreProperties.dev.properties'
#alias recreate-database='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml restart-dbserver recreate-schema start-appserver populate-dev-data; popd'
#alias stop-appserver='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml stop-appserver ; popd'
#alias start-appserver='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml start-appserver ; popd'
#alias restart-appserver='pushd $CONT_APP_HOME ; pwd ; gradle restart-appserver ; popd'
#alias stop-dbserver='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml stop-dbserver ; popd'
#alias start-dbserver='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml start-dbserver ; popd'
#alias restart-dbserver='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml restart-dbserver ; popd'
#alias deploy-app='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml deploy-app ; popd'
#alias deploy-app-no-ui='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml deploy-app-no-ui ; popd'
#alias undeploy-app='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml undeploy-app ; popd'
#alias trpt='open $CODEBASE_HOME/controller/controller-tests/dist/testreports/index.html'
#alias ctest='pushd $CODEBASE_HOME/controller/controller-tests ; ant ; popd'
#alias stest='pushd $CODEBASE_HOME/controller/controller-tests ; ant run-single -Dtestcase=EUMCloudManagerTest; popd'
#alias start-collector='pushd $CODEBASE_HOME/eum-cloud ; ant -f build.xml start-collector ; popd'
#alias start-aggregator='pushd $CODEBASE_HOME/eum-cloud ; ant -f build.xml start-aggregator ; popd'
#alias start-mobileloadgen='pushd $CODEBASE_HOME/agent/rum/mobile/common/eum.test.loadgen ; ant -Dloadgen.printtoconsole=true -Dloadgen.appkey=JA2-AAB-AUM compile loadgen ; popd'
#alias start-mobileloadgen-old='pushd $CODEBASE_HOME/agent/rum/mobile/common/eum.test.loadgen ; ant -Dloadgen.printtoconsole=true -Dloadgen.appkey=JANGE-AAB-AUM compile loadgen ; popd'
#alias start-mobileloadgen-mb='pushd $CODEBASE_HOME/agent/rum/mobile/common/eum.test.loadgen ; gradle run -Dloadgen.printtoconsole=true -Dloadgen.appkey=MACBO-AAB-AUM ; popd'
#alias start-mobileloadgen-jax='pushd $CODEBASE_HOME/agent/rum/mobile/common/eum.test.loadgen ; gradle run -Dloadgen.printtoconsole=true -Dloadgen.appkey=JAX-AAB-AUM ; popd'
#alias start-mobileloadgen-ja3='pushd $CODEBASE_HOME/agent/rum/mobile/common/eum.test.loadgen ; gradle run -Dloadgen.printtoconsole=true -Dloadgen.appkey=JA3-AAB-AUM ; popd'
#alias start-mobileloadgen-allcountries='pushd $CODEBASE_HOME/agent/rum/mobile/common/eum.test.loadgen ; ant -Dloadgen.printtoconsole=true -Dloadgen.appkey=JANGE-AAB-AUM -Dloadgen.configfile=allcountries.json compile loadgen ; popd'
#alias start-webloadgen-old='pushd $CODEBASE_HOME/eum-cloud ; ant loadgen ; popd'
#alias start-webloadgen-mb='pushd $CODEBASE_HOME/eum-cloud ; gradle loadgen -Dloadgen.appkey=MACBO-AAB-AUM ; popd'
#alias start-webloadgen-jax='pushd $CODEBASE_HOME/eum-cloud ; gradle loadgen -Dloadgen.appkey=JAX-AAB-AUM ; popd'
#alias start-webloadgen-ja3='pushd $CODEBASE_HOME/eum-cloud ; gradle loadgen -Dloadgen.appkey=JA3-AAB-AUM ; popd'
#alias deploy-cloud='es;ant clean build;ec;ant clean deploy ; tn "deploy-cloud complete"'
#alias server.log='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $GLASSFISH_HOME/domains/domain1/logs/server.log'
#alias s.log='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $GLASSFISH_HOME/domains/domain1/logs/server.log'
#alias aggregator.log='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/../eum-deploy/aggregator/logs/eum-aggregator.log'
#alias a.log='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/../eum-deploy/aggregator/logs/eum-aggregator.log'
#alias collector.log='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/../eum-deploy/collector/logs/eum-collector.log'
#alias c.log='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/../eum-deploy/collector/logs/eum-collector.log'
#alias cp.log='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/../eum-deploy/crash-processor/logs/eum-crash-processor.log'
#alias controller-api.ts='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/ux/ui/view-main/src/web/lib/controller/controller-api.ts'
#alias controller-api.js='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/ux/ui/view-main/src/web/lib/controller/controller-api.js'
#alias controller-web.ts='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/ux/ui/view-main/src/web/lib/controller/controller-web.ts'
#alias controller-web.js='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/ux/ui/view-main/src/web/lib/controller/controller-web.js'
#alias eum-shared.ts='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/ux/ui/view-main/src/web/lib/controller/eum-shared.ts'
#alias eum-shared.js='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/ux/ui/view-main/src/web/lib/controller/eum-shared.js'
#alias ap.log='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait $CODEBASE_HOME/analytics/analytics-processor/build/install/analytics-processor/logs/analytics-all.log'
#alias tail.ap.log='tail -f $CODEBASE_HOME/analytics/analytics-processor/build/install/analytics-processor/logs/analytics-all.log'
##Replace
#alias startCart='goCart; git pull; ant stop-cart ; ant install-cart ; ant run-jmeter-forever'
#
#alias install-eum-license-key-system='mysql --user=controller --password=controller --database=controller  <<< "update account set eum_cloud_license_key = \"39727cc0-df00-4fcb-a587-1c7c82b82b51\", eum_account_name = \"controller\", eum_license_allows_overages = true, eum_license_units = 100, eum_license_type = \"EUM_PRO\", mobile_license_allows_overages = true, mobile_license_units = 100, mobile_license_type = \"MOBILE_PRO\" where name = \"system\";"'
#alias install-eum-license-key-controller='mysql --user=controller --password=controller --database=controller  <<< "update account set eum_cloud_license_key = \"6ab27127-35ec-4919-8ada-b6b79f48ea84\", eum_account_name = \"controller\", eum_license_allows_overages = true, eum_license_units = 100, eum_license_type = \"EUM_PRO\", mobile_license_allows_overages = true, mobile_license_units = 100, mobile_license_type = \"MOBILE_PRO\" where name = \"system\";"'
#alias install-eum-license-keys='install-eum-license-key-user1;install-eum-license-key-system'
#alias enable-eum-for-controller='mysql --user=controller --password=controller --database=controller  <<< "update eum_configuration set enabled = true where id = 1; update account set expiration_date = (unix_timestamp(now())*1000 + (2*365*24*60*60*1000)) where id = 1;"'
#alias manually-inject-eum-for-controller='sed "s:<head>:<head><script>window[\"adrum-app-key\"] = \"JANGE-AAB-AVJ\";window[\"adrum-start-time\"] = new Date().getTime();</script><script src=\"/adrum.js\"></script>:" $CODEBASE_HOME/ux/ui/view-main/src/web/main.jsp > $WEB_DEPLOY_HOME/main.jsp'
#alias gaai='open http://localhost:7001/eumaggregator/info?cmd=getAllAccountInfo'
#alias gaai='curl -s http://localhost:7001/eumaggregator/info?cmd=getAllAccountInfo'
#alias buckets-loadgen='open http://localhost:7001/eumaggregator/info?cmd=getAllAgrBucketsInfo\&eumAppKey=JA2-AAB-AUM\&eumLicenseKey=bb51e75f-2fb5-499f-b413-fdf4c69fd1d8'
#alias bl='open http://localhost:7001/eumaggregator/info?cmd=getAllAgrBucketsInfo\&eumAppKey=JA2-AAB-AUM\&eumLicenseKey=bb51e75f-2fb5-499f-b413-fdf4c69fd1d8'
#alias console='open http://localhost:4848/common/index.jsf'
#alias enable-cors='sed -i.orig -e "s:ADRUM.EXT.isCORSSupported = false:ADRUM.EXT.isCORSSupported = true:" $CODEBASE_HOME/agent/rum/js/adrum-ext.js'
#alias recreate-database='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml restart-dbserver recreate-schema start-appserver populate-dev-data; popd'
#alias stop-appserver='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml stop-appserver ; popd'
#alias start-appserver='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml start-appserver ; popd'
#alias stop-dbserver='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml stop-dbserver ; popd'
#alias start-dbserver='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml start-dbserver ; popd'
#alias restart-dbserver='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml restart-dbserver ; popd'
#alias deploy-app='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml deploy-app ; popd'
#alias deploy-app-no-ui='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml deploy-app-no-ui ; popd'
#alias undeploy-app='pushd $CONT_APP_HOME ; pwd ; ant -f deploy.xml undeploy-app ; popd'



alias scripts='cd ~/work/vrflowmap/Assets/Scripts/FlowMapScripts'
alias vr='cd ~/work/vrflowmap'

#andrewDocker
alias goDocker='cd $CODEBASE_HOME/automation/docker'
alias goDockerCompose='goDocker; cd `ls | grep composefiles-2016` '

alias dockerMachineStatus='docker-machine status default '
alias dockerMachineStart='docker-machine stop default '
alias dockerMachineStop='docker-machine stop default '
alias dockerLogin='docker login https://docker-registry.corp.appdynamics.com:5003 '

alias dockerIp='docker-machine ip default '
alias dockerPs='docker ps -a '
alias dockerPsController='docker ps -a | grep controller '
alias dockerComposePs='goDockerCompose; docker-compose -f docker-compose-config.json ps '

alias dockerSetup='goDocker; ./setupLocalDockerEnv.sh -t latest '
alias dockerPause='goDockerCompose; docker-compose -f docker-compose-config.json pause '
alias dockerUnpause='goDockerCompose; docker-compose -f docker-compose-config.json unpause '
alias dockerStart='goDockerCompose; docker-compose -f docker-compose-config.json up -d '
alias dockerStop='goDockerCompose; docker-compose -f docker-compose-config.json down -v '

alias dockerCopyWeb='echo "Copying web dir..." ; docker cp $WEB_DEPLOY_HOME/. b489cffd4dcf:/controller/controller-workspace/controller-install/appserver/glassfish/domains/domain1/applications/controller/controller-web_war; echo "done" '
alias dockerSsh='ssh root@`dockerIp` -p 32790 '
