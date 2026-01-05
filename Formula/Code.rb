class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.35"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.35/code-aarch64-apple-darwin.tar.gz"
      sha256 "ca7962748b13443d4c24b2f18884aad3dd539ee1875d06b2b998b76a052bac21"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.35/code-x86_64-apple-darwin.tar.gz"
      sha256 "6dad1457a5234fe25452b001b3a77044c7f7f36ae55698d7acf94e1eee614ab4"
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
