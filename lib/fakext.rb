#--
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
# Version 2, December 2004
#
# Copyleft shura [shura1991@gmail.com]
#
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
# TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
# 0. You just DO WHAT THE FUCK YOU WANT TO.
#++

module Gem
  def self.fakext (lib, root=Dir.pwd)
    File.open(File.join(root, 'Makefile'), 'w') {|f|
      f.write "all:\n\ninstall:\n\n"
    }

    if RUBY_PLATFORM =~ /(?<!dar)win/
      File.open(File.join(root, lib + '.dll'), 'w') {}
      File.open(File.join(root, 'nmake.bat'), 'w') {}
    else
      File.open(File.join(root, 'make'), 'w') {|f|
        f.write '#!/bin/sh'
        f.chmod f.stat.mode | 0111
      }
      File.open(File.join(root, lib + '.so'), 'w') {}
    end
  end
end
