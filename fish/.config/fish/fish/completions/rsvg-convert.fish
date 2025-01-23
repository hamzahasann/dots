complete -c rsvg-convert -s d -l dpi-x -d 'Pixels per inch' -r
complete -c rsvg-convert -s p -l dpi-y -d 'Pixels per inch' -r
complete -c rsvg-convert -s x -l x-zoom -d 'Horizontal zoom factor' -r
complete -c rsvg-convert -s y -l y-zoom -d 'Vertical zoom factor' -r
complete -c rsvg-convert -s z -l zoom -d 'Zoom factor' -r
complete -c rsvg-convert -s w -l width -d 'Width [defaults to the width of the SVG]' -r
complete -c rsvg-convert -s h -l height -d 'Height [defaults to the height of the SVG]' -r
complete -c rsvg-convert -l top -d 'Distance between top edge of page and the image [defaults to 0]' -r
complete -c rsvg-convert -l left -d 'Distance between left edge of page and the image [defaults to 0]' -r
complete -c rsvg-convert -l page-width -d 'Width of output media [defaults to the width of the SVG]' -r
complete -c rsvg-convert -l page-height -d 'Height of output media [defaults to the height of the SVG]' -r
complete -c rsvg-convert -s f -l format -d 'Output format' -r -f -a "{png\t'',pdf\t'',pdf1.7\t'',pdf1.6\t'',pdf1.5\t'',pdf1.4\t'',ps\t'',eps\t'',svg\t''}"
complete -c rsvg-convert -s o -l output -d 'Output filename [defaults to stdout]' -r -F
complete -c rsvg-convert -s i -l export-id -d 'SVG id of object to export [default is to export all objects]' -r
complete -c rsvg-convert -s l -l accept-language -d 'Languages to accept, for example "es-MX,de,en" [default uses language from the environment]' -r
complete -c rsvg-convert -s b -l background-color -d 'Set the background color using a CSS color spec' -r
complete -c rsvg-convert -s s -l stylesheet -d 'Filename of CSS stylesheet to apply' -r -F
complete -c rsvg-convert -l completion -d 'Output shell completion for the given shell' -r -f -a "{bash\t'',elvish\t'',fish\t'',powershell\t'',zsh\t''}"
complete -c rsvg-convert -s ? -l help -d 'Display the help'
complete -c rsvg-convert -s v -l version -d 'Display the version information'
complete -c rsvg-convert -s a -l keep-aspect-ratio -d 'Preserve the aspect ratio'
complete -c rsvg-convert -s u -l unlimited -d 'Allow huge SVG files'
complete -c rsvg-convert -l keep-image-data -d 'Keep image data'
complete -c rsvg-convert -l no-keep-image-data -d 'Do not keep image data'
complete -c rsvg-convert -l testing -d 'Render images for librsvg\'s test suite'
