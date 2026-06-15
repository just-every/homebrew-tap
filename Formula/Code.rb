class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.118"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.118/code-aarch64-apple-darwin.tar.gz"
      sha256 "ac2035efcdeb53f3c06398e288563571dc01601af858620ebd9f4d28e15021df"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.118/code-x86_64-apple-darwin.tar.gz"
      sha256 "423cb9899e429dece9ed7c6d3586305b9fe1d2f87dd48cc63444a609206486c7"
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
