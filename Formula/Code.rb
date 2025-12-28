class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.18"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.18/code-aarch64-apple-darwin.tar.gz"
      sha256 "0a1b4ecf2688cf4b822678e3e390eb0e36cf8b2a8133ec0dd7e4df4b6def2683"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.18/code-x86_64-apple-darwin.tar.gz"
      sha256 "492fad43d56c060faca99edd0440653a67f2b0c14f7116c25a8bf8bdfd7a72c5"
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
