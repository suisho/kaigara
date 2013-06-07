module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-shell-spawn'
  grunt.initConfig
    shell:
      rake:
        command: "bundle exec rake spec",
        options:
          execOptions:
            stdio : "inherit"
    watch:
      rake:
        files: "**/*.rb",
        tasks: ["shell"]

  grunt.registerTask "default", ["shell", "watch"]