class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.86"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.86/code-aarch64-apple-darwin.tar.gz"
      sha256 "e8bef6986f253fa61b9231c608e37d21afa5b6004243e49128984199b9313b39"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.86/code-x86_64-apple-darwin.tar.gz"
      sha256 "1a42b5bf7b2b502348c5d5a249d4e082ae41170ef2fc3b0c6407ec6689cf5f38"
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
