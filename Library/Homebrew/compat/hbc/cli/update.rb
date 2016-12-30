require "cask/lib/hbc/cli/base"

module Hbc
  class CLI
    class Update < Base
      def self.run(*_ignored)
        odeprecated "`brew cask update`", "`brew update`", disable_on: Time.utc(2017, 7, 1)
        result = SystemCommand.run(HOMEBREW_BREW_FILE, args:         ["update"],
                                                       print_stderr: true,
                                                       print_stdout: true)
        exit result.exit_status
      end

      def self.help
        Formatter.warning("deprecated: use `brew update` instead")
      end
    end
  end
end
