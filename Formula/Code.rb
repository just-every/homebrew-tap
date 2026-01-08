class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.41"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.41/code-aarch64-apple-darwin.tar.gz"
      sha256 "bba46c8623909b1709dc3f9a4007d2f8d24947b8d0ebc649a59d7812bb1cabb0"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.41/code-x86_64-apple-darwin.tar.gz"
      sha256 "9d41aea061127c65b22b2beed03ebba2321f4e01d633e65fdd6cda83af8b541d"
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
