'use strict';

module.exports = function(grunt) {
 grunt.initConfig({
  //eslint: {
  // options: {
  //  configFile: 'eslint.json',
  //  outputFile: 'build/reports/eslint/eslint.out',
  //  format: 'checkstyle'
  // },
  // target: ['web/js-file.js',
  //          'web/js-file2.js'],
  //},

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

 require('load-grunt-tasks')(grunt);

 grunt.loadNpmTasks('grunt-contrib-jshint');
 grunt.loadNpmTasks('grunt-contrib-csslint');
 grunt.registerTask('default', ['jshint', 'csslint']);//, 'eslint']);
};
