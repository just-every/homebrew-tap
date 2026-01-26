class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.52"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.52/code-aarch64-apple-darwin.tar.gz"
      sha256 "a9431c1c070c76c69e3171028e852d5f6757043239f3b6190a5d2e8cc7df4cb1"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.52/code-x86_64-apple-darwin.tar.gz"
      sha256 "8cc090bae527ecf9ef7f5c21c15df4d0a35830bad6c88e8f7d1d8441b4b03771"
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
