class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.146"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.146/code-aarch64-apple-darwin.tar.gz"
      sha256 "e8479bb98fac42c8ebad001b4c16a2d0a93c295b906860fb987f2da65d5fe5cf"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.146/code-x86_64-apple-darwin.tar.gz"
      sha256 "d78a4904b24fd3b8f57ebda6212997ee4c7fadff79f91a12619145a2af4a092b"
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
