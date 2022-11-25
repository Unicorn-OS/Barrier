# Wayland
Doesn't work on Wayland Yet!
Desktop has to be set to X11, for now.

## status: unsupported

# Bugs:
https://github.com/debauchee/barrier/issues?q=wayland


# Solution:
https://github.com/debauchee/barrier/issues/1794

## debug output:
```
$ barrier
Warning: Ignoring XDG_SESSION_TYPE=wayland on Gnome. Use QT_QPA_PLATFORM=wayland to run on Wayland anyway.

$ export QT_QPA_PLATFORM=wayland
$ barrier
Warning: Ignoring XDG_SESSION_TYPE=wayland on Gnome. Use QT_QPA_PLATFORM=wayland to run on Wayland anyway.
qt-qpa.plugin: Could not find the Qt platform plugin "wayland" in ""
This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix the problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, xcb.

Abort (core dumped)
```

## Discussion:
https://github.com/debauchee/barrier/issues/1659#issuecomment-1121964455
