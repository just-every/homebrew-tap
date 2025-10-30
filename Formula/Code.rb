class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.6"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.6/code-aarch64-apple-darwin.tar.gz"
      sha256 "db47e8fe36796a14b44ce8ba89583057bca6074ed00b17e5fd4cb37f3ba82c36"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.6/code-x86_64-apple-darwin.tar.gz"
      sha256 "4a6b31f933e8e38b0f2f3ede5f59599b76f35e61e084167f6b726686ed4bb572"
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
