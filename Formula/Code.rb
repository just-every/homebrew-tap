class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.136"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.136/code-aarch64-apple-darwin.tar.gz"
      sha256 "2cdabee6276da301af9b239bb1eacdf61ddab9a2333985eee70ce354c618c42d"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.136/code-x86_64-apple-darwin.tar.gz"
      sha256 "e7438b9880a4fa4055aa3e042f95bcfa4c65a5dd12129dbaf5b8bf086ca28261"
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
