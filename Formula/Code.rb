class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.27"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.27/code-aarch64-apple-darwin.tar.gz"
      sha256 "ccfd262f510b278cd648e0ae66fbae4c1229706afc88c628051513f2d7d75c39"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.27/code-x86_64-apple-darwin.tar.gz"
      sha256 "1531319733828e19ec910fa95ac2a76f8a0d81fb4afdd542a7b9d093c3531592"
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
