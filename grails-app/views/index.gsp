<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>	
		</style>
	</head>

	<body>
<header class="jumbotron subhead" id="overview">
  <div class="container">
    <h1>Welcome to Grails</h1>
    <p class="lead">Congratulations, you have successfully started your first Grails application! At the moment
			   this is the default page, feel free to modify it to either redirect to a controller or display whatever
			   content you may choose. Below is a list of controllers that are currently deployed in this application,
			   click on each to execute its default action.</p>
    <div id="carbonads-container"><div class="carbonad"><div id="azcarbon"></div><script type="text/javascript">var z = document.createElement("script"); z.type = "text/javascript"; z.async = true; z.src = "http://engine.carbonads.com/z/32341/azcarbon_2_1_0_HORIZDARK"; var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(z, s);</script></div></div>
  </div>
</header>
		
<div class="row">
    <div class="span3">
    	<ul class="nav nav-list affix">
    		<li><a href="#installedPlugins">Installed Plugins</a></li>
    		<li><a href="#controllers">Controller List</a></li>
    		<li class="nav-header">Application Status</li>
	      	<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${GroovySystem.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
    	</ul>
	</div>
	<div class="span9">
		<section id="installedPlugins">
		<h2>Installed Plugins</h1>
		<ul>
			<table class="table table-striped">
				<thead><tr><th>Plugin</th><th>Version</th></tr></thead>
				<tbody>
			<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
				<tr><td>${plugin.name}</td><td>${plugin.version}</td></tr>
			</g:each>
		</tbody>
			</table>
		</ul>
	</section>
	<section id="controllers">
		<div id="controller-list" role="navigation">
			<h2>Available Controllers:</h2>
			<table class="table table-striped">
				<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">

					<tr><td><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></td></tr>
				</g:each>
			</table>
		</div>
	</section>
	</div>
</div>
</body>
</html>
