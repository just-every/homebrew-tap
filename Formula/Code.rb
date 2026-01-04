class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.30"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.30/code-aarch64-apple-darwin.tar.gz"
      sha256 "407240ac6e012e8e0b34cedaa940135e9f00007dfceddc2e82950a9c9a3c7e7e"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.30/code-x86_64-apple-darwin.tar.gz"
      sha256 "51735f57ecf483b689bea8d49a3969771e04e6d3d3be1aff983baa2c1dc2b8bd"
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
