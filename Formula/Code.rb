class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.104"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.104/code-aarch64-apple-darwin.tar.gz"
      sha256 "ec916b466777f835730cb967a99829dfcdab99a5cb44bdb912dc927801b594b8"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.104/code-x86_64-apple-darwin.tar.gz"
      sha256 "abddff5e75e1bad2c688ec5813c66e54873a721830d3e91098c9ffac0a7c11df"
    end
  end

  def install
    bin.install Dir["code-*"].first => "code"
    # Provide a compatibility shim
    (bin/"coder").write <<~EOS
      #!/bin/bash
      exec "#{bin}/code" "$@"
    EOS
  end

  test do
    system "#{bin}/code", "--help"
  end
end
