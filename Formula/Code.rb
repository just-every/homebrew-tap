class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.1/code-aarch64-apple-darwin.tar.gz"
      sha256 "2e02ea1139d91116a4473ecb846654eee5e4261287ab2636788877c9ce394dd6"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.1/code-x86_64-apple-darwin.tar.gz"
      sha256 "49706e2f90d15849990c3583185a82d7cbb119cecf821d71cdf4fe68af16a381"
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
