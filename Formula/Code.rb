class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.154"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.154/code-aarch64-apple-darwin.tar.gz"
      sha256 "793cf6ce574e833e4abad5a64b5995da8206ee1c92c1b3cb23eeab5c0381b143"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.154/code-x86_64-apple-darwin.tar.gz"
      sha256 "dd297bfba2738453519fa60ab2c07896d8179b83947e4d28b60f735069132f4d"
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
