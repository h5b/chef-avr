module Group
  module Helper

    include Chef::Mixin::ShellOut

    def on_vagrant?
      cmd = shell_out!("getent passwd vagrant", {:returns => [0,2]})
      cmd.stderr.empty? && (cmd.stdout =~ /^vagrant/)
    end

  end
end
