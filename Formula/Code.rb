class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.98"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.98/code-aarch64-apple-darwin.tar.gz"
      sha256 "11cc90d1dc6c84a76be7c4c0e6362289b6018295e8c0d0e3efc7bf1593dc57a2"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.98/code-x86_64-apple-darwin.tar.gz"
      sha256 "0831266b3086ca087f7fb7d6db5ec815656aee5c7e611bb5a7bd6ea137bb7462"
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
