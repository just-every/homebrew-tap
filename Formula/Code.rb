class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.5"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.5/code-aarch64-apple-darwin.tar.gz"
      sha256 "68735dab87130d626b82fe9dc5c8090efa6584bf1caefefbe09c37331454f58c"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.5/code-x86_64-apple-darwin.tar.gz"
      sha256 "0c805d9e5151c095e17ae67f9dc0c26a11c85e4c8c9694bc03a47ec5bd2ee300"
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
