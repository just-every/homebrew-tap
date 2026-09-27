class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.194"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.194/code-aarch64-apple-darwin.tar.gz"
      sha256 "e36c1d888da6158de3dc954ded9d30afcb0db9938feef79b7aedc2b4eab59ad0"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.194/code-x86_64-apple-darwin.tar.gz"
      sha256 "f39dc57a76e5fdc5084aab29ae6dbd4ba1c1817da1cf0f64bc8c4dd8615e9531"
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
