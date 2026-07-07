class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.142"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.142/code-aarch64-apple-darwin.tar.gz"
      sha256 "63d7d4eab4093d77284d504a44c2b8b2490960d0eb9a0e25ce40cf3d0875d2f5"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.142/code-x86_64-apple-darwin.tar.gz"
      sha256 "53c18f3147f8d5aea5e3ce00b13e744300577a8e9b071bced44bc8658cbd4594"
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
