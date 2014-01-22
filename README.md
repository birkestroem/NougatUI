NougatUI
========

A complete frontend toolchain in a single Nuget package.

## Issues with PATH
If you are getting this error about Ruby and Compass not being in the path:

> Warning: You need to have Ruby and Compass installed and in your system PATH for this task to work.
> More info: https://github.com/gruntjs/grunt-contrib-compass


You can add the following code to your Gruntfil, inside the `module.exports = function(grunt) {}` block:

	// Add NougatUI path to the grunt process environment path.
	// --------------------------------------------------------------
	process.env.Path = process.env.Path + ';' + process.argv[0].replace('\\node.exe','');

## Issues with Version Control
Be sure that you don't ignore some files, SVN ignore in Visual Studio Projects might ignore all `.so` files, this will make compass and ruby break.
You can simply unignore the files, if this is an issue.