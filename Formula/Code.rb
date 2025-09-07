class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.83"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.83/code-aarch64-apple-darwin.tar.gz"
      sha256 "9940a78da9adab6683d9dd04e14dae7974cafc0579a38a8a4f355295c36abfd7"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.83/code-x86_64-apple-darwin.tar.gz"
      sha256 "ced100ba0f25c8853672dbdcab7f0dee9e202d5a9b61300ae48edad050bc0c67"
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
