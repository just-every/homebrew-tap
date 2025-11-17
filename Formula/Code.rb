class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.18"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.18/code-aarch64-apple-darwin.tar.gz"
      sha256 "93f7efedfec9e9ea6776e1dc999db83c6724e0026e7576211d5820a733902182"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.18/code-x86_64-apple-darwin.tar.gz"
      sha256 "267d5ef7a84824fc1b23dc4c26be8c4ef1f60fa9f5f85d76f015f90b656ebce3"
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
