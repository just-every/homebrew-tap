class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.98"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.98/code-aarch64-apple-darwin.tar.gz"
      sha256 "7446eb64dc5c45faf4d2e50969d8b9239f44738a40367e57a0130fa9f0ab2c67"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.98/code-x86_64-apple-darwin.tar.gz"
      sha256 "745bedac05813568ded4064d8d53e7e857bf654ea417bc5016b0fc1186150bf9"
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
