class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.142"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.142/code-aarch64-apple-darwin.tar.gz"
      sha256 "da119c92db8cb4e1719a1e6aff3006ccb6a3c4b8e901bfa2b14daecad9383a92"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.142/code-x86_64-apple-darwin.tar.gz"
      sha256 "a30005d0e2a53984316a4a106609e37cfba0f1832cf1c6bf02537f6e05f53470"
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
