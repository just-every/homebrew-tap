class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.16"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.16/code-aarch64-apple-darwin.tar.gz"
      sha256 "de5bb6a260838b17fcdd20571cc1de709659256dfe56445bec9dd697139f7100"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.16/code-x86_64-apple-darwin.tar.gz"
      sha256 "7704a4729fd235e5b01f8b4be1f03154c7c5d89fc368e098e94f30afdee33c91"
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
