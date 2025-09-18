class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.153"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.153/code-aarch64-apple-darwin.tar.gz"
      sha256 "2b26cb1fb187ee00696db307513978c59d0289c03c8fd5b173d7198ab92879a1"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.153/code-x86_64-apple-darwin.tar.gz"
      sha256 "ca92c00c952924892ca91459ff3617cbdba6b748939db164250fec8b4bd9fd6b"
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
