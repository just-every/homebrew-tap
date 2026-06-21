class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.127"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.127/code-aarch64-apple-darwin.tar.gz"
      sha256 "4d0434d5df26a8fd6f134b06a40e83bb61923fc7d650c0dfc262131b44a14a8e"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.127/code-x86_64-apple-darwin.tar.gz"
      sha256 "16d2bdd4736a8dc9d391e406c58b2a47cbcc8ad478d941e290cf0d15b6389d83"
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
