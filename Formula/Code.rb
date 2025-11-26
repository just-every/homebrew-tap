class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.6"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.6/code-aarch64-apple-darwin.tar.gz"
      sha256 "00d0068a6d8c2d0919f1a652d513a7264cd3c16262e66b9ab68a498d01156e75"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.6/code-x86_64-apple-darwin.tar.gz"
      sha256 "25c5a37e865eca963772a980949bd0f36ee2027797bffe717163274d49968c08"
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
