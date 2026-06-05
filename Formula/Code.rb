class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.106"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.106/code-aarch64-apple-darwin.tar.gz"
      sha256 "698f7ac1609addaafccb68521478b4f7aba804d0fe613a02d863c1ead543c208"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.106/code-x86_64-apple-darwin.tar.gz"
      sha256 "581d6db82b4bb4d5512db18b4ddd494650bd95bb59b2a8b8dfb558adb6e84c31"
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
