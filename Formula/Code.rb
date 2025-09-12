class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.129"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.129/code-aarch64-apple-darwin.tar.gz"
      sha256 "b8b45b4c745a81b69e16c03924dd8c97eb00fbdc45ee06fab13a4b39391063cd"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.129/code-x86_64-apple-darwin.tar.gz"
      sha256 "c56154ba9161e50a22480ff4d83377a02f3cecd3a99fa91fab9a8a2b6f8402ca"
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
