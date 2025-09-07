class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.81"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.81/code-aarch64-apple-darwin.tar.gz"
      sha256 "d7940966fb240a6404c4cc728cf25e83e0ab2884967328eb19306a38f13ae51b"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.81/code-x86_64-apple-darwin.tar.gz"
      sha256 "374dbe14f9afeba7fd235128429795faeee99c0223d8691611e10584dc571e12"
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
