class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.152"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.152/code-aarch64-apple-darwin.tar.gz"
      sha256 "3a90d3f2956e5fb841f274f1b4ea47eecd4dcc5061fc746c8e1d79f93b51e20b"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.152/code-x86_64-apple-darwin.tar.gz"
      sha256 "3d85c2c946a3aefca988f0dcb376bd91b686a8a17c37b8f937787f8786732cd9"
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
