modules = {
    application {
        resource url:'js/application.js'
    }

    'custom-bootstrap' {
        defaultBundle 'bundle_bootstrapX.css'

        // dependsOn 'bootstrap'
        // , b
        resource url: 'less/custom-bootstrap.less',attrs:[rel: "stylesheet/less", type:'css'] //, bundle:'bundle_bootstrap.css'

        resource url: 'css/dummy.css' // Workaround so compiled LESS resources can be bundled
    }

    'bootstrap-responsive-less' {

    }

}