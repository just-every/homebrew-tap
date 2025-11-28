class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.15"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.15/code-aarch64-apple-darwin.tar.gz"
      sha256 "277d66026d7061a59059f8ed81296f46d6f715c036df57eaaaec44dd35a24928"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.15/code-x86_64-apple-darwin.tar.gz"
      sha256 "4abfa50549776346a0f6eca063869772cad3f6279b9bd59a944a853025829c4d"
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
