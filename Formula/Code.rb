class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.71"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.71/code-aarch64-apple-darwin.tar.gz"
      sha256 "243385bc088d988888d65c2759f30be475868e3e3872f1fd34e52a477ad9531b"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.71/code-x86_64-apple-darwin.tar.gz"
      sha256 "010b770a617d3752e99efa827bb2ae24a8e1b7519fffeecec3e2a43477e335fc"
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
