FROM sighery/archbuilder:latest AS builder

USER builder

COPY --chown=builder ./ package/
WORKDIR package
RUN makepkg -s --needed --noconfirm --noprogressbar

CMD ["/bin/bash"]

FROM builder AS namcap
RUN sudo pacman -S --needed --noconfirm namcap
RUN namcap PKGBUILD
RUN namcap /builds/output/*.pkg.tar.xz
