modules = {
    application {
        resource url:'js/application.js'
    }



    'custom-bootstrap' {
        // dependsOn 'bootstrap'
        resource url: 'less/custom-bootstrap.less', 
            attrs: [rel: "stylesheet/less", type:'css']
    }

    'bootstrap-responsive-less' {
    	
    }

}