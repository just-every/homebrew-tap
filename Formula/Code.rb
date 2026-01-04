class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.32"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.32/code-aarch64-apple-darwin.tar.gz"
      sha256 "30148157ea9fb7c25959cff539eac30960f96a0806c6f7f962526cec894f60b9"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.32/code-x86_64-apple-darwin.tar.gz"
      sha256 "26996c73de2fe221fb6c48566d31d1f771693961ae34142b37cb07e824f72226"
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
