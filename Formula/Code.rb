class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.174"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.174/code-aarch64-apple-darwin.tar.gz"
      sha256 "d60ba95ed4f9dd92b5f96f80982547c5a78e14aa99e5ecff563eea74724c9892"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.174/code-x86_64-apple-darwin.tar.gz"
      sha256 "47ca04acfcbf088bae148003e9293575b17ff526b42e52d85b7b472b45f61bd8"
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
