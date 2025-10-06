class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.0.0"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.0.0/code-aarch64-apple-darwin.tar.gz"
      sha256 "d7c556460b57b46a333ee6552f0bb306c9e52a82ead4a7375f8145404393c7af"
    else
      url "https://github.com/just-every/code/releases/download/v0.0.0/code-x86_64-apple-darwin.tar.gz"
      sha256 "b2d9b9799d77237ee12640af62262ecc64c92aae6314d048fdf6a5f8fd972c7f"
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
