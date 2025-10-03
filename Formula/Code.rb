class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.183"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.183/code-aarch64-apple-darwin.tar.gz"
      sha256 "2ad9c857190bb25baf68c0893c1359f96c423b9edb44138723e8c2334f14f0d0"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.183/code-x86_64-apple-darwin.tar.gz"
      sha256 "594a6b2b8d9dcaba7d772d909babaf65a0b625413c449940dc0b63af0ff30274"
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
