class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.117"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.117/code-aarch64-apple-darwin.tar.gz"
      sha256 "c8f73316b3fa6749ee72d1ed4a46c91dab6ed1bc01c59cd13dad0c28846f6e87"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.117/code-x86_64-apple-darwin.tar.gz"
      sha256 "c544a369a5bc0c07bcb6a7d646271354b50d0c5332cd0fce53f3e95ee2650a4d"
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
