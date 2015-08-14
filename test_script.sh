#trying to write a file that will create initial files needed for class files#!/bin/bash

#create file folder
if [ ! -d file_folder ]; then
	mkdir file_folder
	chmod 777 file_folder
fi
# create working folders if not already created
#app
#src
#views
#web
#tests
if [ ! -d file_folder/app ]; then
	mkdir file_folder/app
	chmod 777 file_folder/app
fi
if [ ! -d file_folder/src ]; then
	mkdir file_folder/src
	chmod 777 file_folder/app
fi
if [ ! -d file_folder/views ]; then
	mkdir file_folder/views
	chmod 777 file_folder/views
fi
if [ ! -d file_folder/web ]; then
	mkdir file_folder/web
	chmod 777 file_folder/web
fi
if [ ! -d file_folder/tests ]; then
	mkdir file_folder/tests
	chmod 777 file_folder/tests
fi
#create files contained in main project folder
#composer.json
if [ ! -f ./file_folder/composer.json ]; then
cat << EOF > ./file_folder/composer.json
{
	"require": {
		"silex/silex": "~1.1",
		"twig/twig": "~1.0",
		"phpunit/phpunit": "4.5.*"
	}
}
EOF

fi
#.gitignore
if [ ! -f ./file_folder/.gitignore ]; then
cat << EOF > ./file_folder/.gitignore
/vendor
.DS_Store
*.thumbs
EOF

fi
#specs sheet
if [ ! -f ./file_folder/specs.txt ]; then
cat << EOF > ./file_folder/specs.txt
APP SPECS
EOF

fi
#web/index.php
if [ ! -f ./file_folder/web/index.php ]; then
cat << EOF > ./file_folder/web/index.php
<?php
	\$website = require_once __DIR__.'/../app/app.php';
	\$website->run();
?>
EOF

fi
#tests file
if [ ! -f ./file_folder/tests.ClassTest.php ]; then
cat << EOF > ./file_folder/tests/ClassTest.php
<?php
	require_once "src/Class.php";

	class ClassTest extends PHPUnit_Framework_TestCase
	{
		//first test
		function()
		{
			//Arrange
			\$test = new Class;

			//Act
			\$result = \$test->();
			\$answer = ;

			//Assert
			\$this->assertEquals(\$answer, \$result);

		}
	}
?>
EOF

fi
#app.php
if [ ! -f ./file_folder/app/app.php ]; then
cat << EOF > ./file_folder/app/app.php
<?php
	require_once __DIR__.'/../vendor/autoload.php';
	require_once __DIR__.'/../src/Class.php';

	\$app = new Silex\Application();

	\$app->register(new Silex\Provider\TwigServiceProvider(), array(
		'twig.path' => __DIR__'./../views'
	));

	\$app->get("/", function() use (\$app){
		return \$app['twig']->render('home.html.twig');
	});

	return \$app
?>
EOF

fi
#src/Class.php
if [ ! -f ./file_folder/src/Class.php ]; then
cat << EOF > ./file_folder/src/Class.php
<?php
	class Class
	{

	}
?>
EOF

fi
#home page
if [ ! -f ./file_folder/views/home.html.twig ]; then
cat << EOF > .file_folder/views/home.html.twig
<DOCTYPE html>
<html>
	<head>
		<title></title>
		<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css>
	</head>
	<body>
		<div class="container">
			<h1></h1>
			<form action='/---'>
				<div class="form_group">
					<label for=""></label>
					<input id="" name="" type="">
				</div>
				<button type="submit" class="btn-success"></button>
			</form>
		</div>
	</body>
</html>
EOF

fi

