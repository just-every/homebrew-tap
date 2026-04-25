class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.95"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.95/code-aarch64-apple-darwin.tar.gz"
      sha256 "0e1a58e2bca827c03efd1bafe69bef4b432ea87eeb83f87bb070dc314ddc319b"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.95/code-x86_64-apple-darwin.tar.gz"
      sha256 "6dc907fa663c01cf7cc7a651c4e87377d4dab7b9d9856ba97e3819eeb892ca97"
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
