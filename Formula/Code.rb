class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.124"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.124/code-aarch64-apple-darwin.tar.gz"
      sha256 "11b54efa3f182bee94a93873ce8963fedf9d8ea9bab106d4c0dc9a3ecab8577f"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.124/code-x86_64-apple-darwin.tar.gz"
      sha256 "9cfaccf10ad1ddcd18e3d97c125cc5570150453252a471642e91fca23a2d5d3a"
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
