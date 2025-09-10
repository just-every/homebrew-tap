class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.109"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.109/code-aarch64-apple-darwin.tar.gz"
      sha256 "e0fd38238a894a0ff60c4713a05439a7350de8f0e58d3f1fd578f31c48819913"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.109/code-x86_64-apple-darwin.tar.gz"
      sha256 "4c1412243db869c667729d92c5f23e9f287c368de1ba0d871694b9ea828df1a1"
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
