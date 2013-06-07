module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-shell'
  grunt.initConfig
    shell:
      rake:
        command: "bundle exec rake spec",
        options:
          stdout: true
          stderr: true
    watch:
      rake:
        files: "**/*.rb",
        tasks: ["shell"]