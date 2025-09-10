class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.112"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.112/code-aarch64-apple-darwin.tar.gz"
      sha256 "c7cec86073bce0105dfc1c7ffc44e1c62bb8f20d1a6426276d2c95abd4e87cc6"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.112/code-x86_64-apple-darwin.tar.gz"
      sha256 "421221aa59456e0e082bb6addb26ca4869b762e3a04d8a7684535878dc485308"
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
