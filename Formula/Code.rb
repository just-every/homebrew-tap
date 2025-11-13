class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.13"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.13/code-aarch64-apple-darwin.tar.gz"
      sha256 "9ea569d097e1f7fd367ec3e4e6877bc9dd3519b0af365949297f420287645b3a"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.13/code-x86_64-apple-darwin.tar.gz"
      sha256 "bf19ca80fdf2c6e3f95db68ec236328b93c933294fabc7dc8735da9bba764263"
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
