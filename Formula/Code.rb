class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.151"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.151/code-aarch64-apple-darwin.tar.gz"
      sha256 "6301a71d06f56d84097a38904ecf5b375e8f36240d47e7a1b8e60c2ec394dad1"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.151/code-x86_64-apple-darwin.tar.gz"
      sha256 "a08fe10399a92b5708be851efd5788909a0f78b61fb56f410c8d298a7ec7c4f4"
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
