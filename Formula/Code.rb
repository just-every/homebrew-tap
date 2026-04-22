class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.94"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.94/code-aarch64-apple-darwin.tar.gz"
      sha256 "21e53d7afdd258d45722d4406132de161921a609e6ea125d5912141bb523d287"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.94/code-x86_64-apple-darwin.tar.gz"
      sha256 "1f17c2ce62dc8d22831d0ffebd1bd13c6801b553d9d0ef200e3c11c8fa5be588"
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
