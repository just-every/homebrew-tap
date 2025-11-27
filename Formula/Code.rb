class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.13"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.13/code-aarch64-apple-darwin.tar.gz"
      sha256 "034a09da70054f4c7081d0b5b4a336852b74216e47a3f02560161e4a21e2e92f"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.13/code-x86_64-apple-darwin.tar.gz"
      sha256 "88b6201f71f3341c6465d76bceda9e98494042615f9cdceadcff7aa33efb7207"
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
