module Pod
  module UserInterface
    module BuildFailedReport
      class << self
        def report(command, output)
          # MARK: Ruby syntax: <<-XYZ  XYZ ???
          <<-EOF
Build command failed: #{command}
Output:
#{output.map { |line| "    #{line}" }.join}
          EOF
        end
      end
    end
  end
end
