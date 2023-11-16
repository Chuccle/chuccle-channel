(define-module (chuccle-channel environment chuccle-de))

(use-modules (gnu packages suckless)
             (gnu packages xorg)
             (gnu packages image)
             (guix gexp)
             (guix packages)
             (guix git-download)
             (gnu packages gtk)
             (gnu packages fontutils)
             (gnu packages pkg-config)
             (gnu packages)
)

(define-public chuccle-dwm
  (let(
    (commit "601240495aef4a9fd8904851fe4ae48a1f62d016")
    (revision "1")
    (url "https://github.com/Chuccle/dwm-flexipatch"))
      (package
        (inherit dwm)
        (name "chuccle-dwm")
        (inputs 
          (modify-inputs 
            (package-inputs dwm)
            (append libxext)))
        (source
          (origin
            (uri 
              (git-reference
                (url url)
                (commit commit)))
            (method git-fetch)
            (sha256
              (base32 "1w47c3vp00i8znsk05i70qs9l1jnfxfy860f4p279s032shw8x09"))
            (file-name(git-file-name name "1")))))))

    (define-public chuccle-st
      (let(
        (commit "e5db95f83500abbdcfc2cdb6f46d97dff4facc67")
        (revision "1")
        (url "https://github.com/Chuccle/st-flexipatch"))
          (package
            (inherit st)
            (name "chuccle-st")
            (inputs
              (modify-inputs
                (package-inputs st)
                (append pkg-config)
                (append harfbuzz)
                (append freetype)
                (append fontconfig)))
        (source
          (origin
            (uri 
              (git-reference
                (url url)
                (commit commit)))
            (method git-fetch)
            (sha256
             (base32 "1h3cc50xxgsci5dgcg79g2d94xpng0yzm0pz2zri9b6xiqdmlxjm"))
            (file-name(git-file-name name "1")))))))

    (define-public chuccle-dmenu
      (let(
        (commit "6bd3860e4b84c7e2701ca3ab86d9c11355c47ebc")
        (revision "1")
        (url "https://github.com/Chuccle/dmenu-flexipatch"))
          (package
            (inherit dmenu)
            (name "chuccle-dmenu")
            (inputs (modify-inputs (package-inputs dmenu)))
            (source
              (origin
                (uri 
                  (git-reference
                    (url url)
                    (commit commit)))
                (method git-fetch)
                (sha256
                  (base32 "13r4iq86gbiyb4a65fpj7khsl4jrki1l69hd8f8vizk3vi2bgmv4"))
                (file-name(git-file-name name "1")))))))

    (define-public chuccle-slstatus
      (let(
        (commit "a8cf2c05073b47f2f2234114456d401ffafc7270")
        (revision "1")
        (url "https://github.com/Chuccle/slstatus"))
          (package
            (inherit slstatus)
            (name "chuccle-slstatus")
            (source
              (origin 
                (uri 
                  (git-reference
                    (url url)
                    (commit commit)))
                (method git-fetch)
                (sha256
                  (base32 "0rw79w2lzf51irghgmcjgvvalrq1i6q8k4sfbdr02hdylkyhyk1q"))
                (file-name(git-file-name name "1")))))))