module.exports = function(grunt) {

    grunt.initConfig({

    "bower-install-simple": {
          options: {
              color: true,
              directory: "bower_components"
          },
          "prod": {
              options: {
                  production: true
              }
          }
      },


  });


  grunt.loadNpmTasks('grunt-bower-install-simple');

  grunt.registerTask('default', ['bower-install-simple']);

};
