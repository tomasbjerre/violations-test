'use strict';

module.exports = function(grunt) {
 grunt.initConfig({
  jshint: {
   all: [
    'web/*.js'
   ],
   options: {
    "undef": true,
    "unused": true,
    reporter: 'jslint',
    reporterOutput: 'build/reports/jshint/jshint.xml',
    force: true,
   },
  },

  csslint: {
   all: [
    'web/*.css'
   ],

   options: {
    formatters: [
      {id: 'csslint-xml', dest: 'build/reports/csslint/csslint.xml'}
    ],
    force: true,
   },
  }
 });

 grunt.loadNpmTasks('grunt-contrib-jshint');
 grunt.loadNpmTasks('grunt-contrib-csslint');
 grunt.registerTask('default', ['jshint', 'csslint']);
};
