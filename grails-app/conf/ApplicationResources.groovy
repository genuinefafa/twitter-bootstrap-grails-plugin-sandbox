modules = {
    application {
        resource url:'js/application.js'
    }

    // NOTE: workaround for https://github.com/groovydev/twitter-bootstrap-grails-plugin/issues/30
    //       Forces the bootstrap plugin's less path into the set of paths for the LessResourceMapper.
    'bootstrap-dummy' { resource url: [plugin: 'twitter-bootstrap', dir: 'less', file: 'bootstrap.less'], attrs:[rel: "stylesheet/less", type:'css'] }

    'custom-bootstrap' {
        dependsOn 'bootstrap-js'
        dependsOn 'bootstrap-responsive-less'

        resource url: 'less/custom-bootstrap.less',attrs:[rel: "stylesheet/less", type:'css']
    }
}
