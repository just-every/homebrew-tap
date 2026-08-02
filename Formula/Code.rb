class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.165"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.165/code-aarch64-apple-darwin.tar.gz"
      sha256 "b97427abe351a18655ffb1299b5dd4c50d78097f05282d8407b6f73beea4fb41"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.165/code-x86_64-apple-darwin.tar.gz"
      sha256 "6bb0998826cc4cc8236fd7de3037af116fa59ab42b0ac5b9826de591bfb1b8c4"
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
