module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    uglify: {
      options: {
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      },
      build: {
        src: [
        	'src/main/webapp/js/vendors/jquery-1.9.1.js',
          'src/main/webapp/bower_components/jqueryui/ui/minified/jquery-ui.min.js',
        	'src/main/webapp/js/vendors/tinyscrollbar.js',
          'src/main/webapp/js/vendors/bootstrap.js',
          'src/main/webapp/bower_components/jquery.connections/jquery.connections.js',
          'src/main/webapp/bower_components/squel/squel.js',
          'src/main/webapp/bower_components/d3/d3.min.js',
          'src/main/webapp/js/vendors/angular.js',
          'src/main/webapp/bower_components/underscore/underscore.js',
          'src/main/webapp/js/vendors/angular-resource.js',
          'src/main/webapp/bower_components/angular-ui-router/release/angular-ui-router.min.js',
          'src/main/webapp/js/app/app.js',
          'src/main/webapp/js/app/config/rcConstants.js',
          'src/main/webapp/js/app/services/rcUtility.js',
          'src/main/webapp/js/app/services/rcService.js',
          'src/main/webapp/js/app/services/dataModel.js',
          'src/main/webapp/js/app/services/login.js',
          'src/main/webapp/js/app/controller/mainCtrl.js',
          'src/main/webapp/js/app/controller/login.js',
          'src/main/webapp/js/app/controller/dashboard.js',
          'src/main/webapp/js/app/directives/rcTable.js',
          'src/main/webapp/js/app/directives/rcTableRow.js',
          'src/main/webapp/js/app/directives/rcSelectedTables.js',
          'src/main/webapp/js/app/directives/rcSelectedTable.js',
          'src/main/webapp/js/app/directives/rcQueries.js',
          'src/main/webapp/js/app/directives/rcDraggable.js',
          'src/main/webapp/js/app/directives/rcDroppable.js',
          'src/main/webapp/js/app/directives/rcJoins.js',
          'src/main/webapp/js/app/directives/rcFilters.js',
          'src/main/webapp/js/app/directives/rcFilter.js',
          'src/main/webapp/js/app/directives/rcChartConfig.js'
        ],
        dest: 'src/main/webapp/js/rc.min.js'
      }
    },
    cssmin: {
      add_banner: {
        options: {
          banner: '/* My minified css file */'
        }
      },
      minify: {
        src: ['src/main/webapp/css/*.css', 
              'src/main/webapp/bower_components/fontawesome/css/font-awesome.min.css',
              'src/main/webapp/bower_components/select2/select2.css',
              'src/main/webapp/bower_components/select2/select2-bootstrap.css'

              ],
        dest: 'src/main/webapp/styles/rc.min.css',
        ext: '.min.css'
      }
    }
  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-cssmin');

  // Default task(s).
  grunt.registerTask('default', ['uglify', 'cssmin']);

};