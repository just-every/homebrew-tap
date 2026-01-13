class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.47"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.47/code-aarch64-apple-darwin.tar.gz"
      sha256 "d931e79ab4f3b7211e86447199f3039ba6d9dfd4a24688b961c19130974227e0"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.47/code-x86_64-apple-darwin.tar.gz"
      sha256 "892ad514cbf74fd9092a7fa64ed1edf60bd0a1b288b6e4d47777b7e2935852d9"
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
