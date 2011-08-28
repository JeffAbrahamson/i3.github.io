<%!
	section = "index"
%>
<%inherit file="_templates/i3.mako" />
<div id="info" class="clearfix">

    <div id="screens">
        <a href="/screenshots/" title="view more screenshots of i3">
        <img id="screenshot" src="/screenshots/i3-9.bigthumb.png" width="375" height="234" alt="i3 screenshot">
        </a>
    </div>

    <h2>Do What I Mean. Good Docs. Clean Code. Sounds good?</h2>
    <p>
    Then you will love i3. Watch the <a href="/screenshots/">screencast</a>,<br>
    read the <a href="/docs/4.0/userguide.html">User’s Guide</a> and <a
    href="/downloads/">install i3</a>!
    </p>
    <div id="download">
        <a href="/downloads">
        <span style="font-weight: bold; color: #3A8ECD; margin-right: .5em">➡</span>
        Download the latest version
        <span style="margin-left: 2em; color: #c0c0c0">4.0.2</span>
        </a>
    </div>
</div>

<div id="content">
<p>
i3 is a <a href="http://en.wikipedia.org/wiki/Tiling_window_manager">tiling
window manager</a>, completely written from scratch. The target platforms are
GNU/Linux and BSD operating systems, our code is Free and Open Source Software
(FOSS) under the BSD license. i3 is primarily targeted at advanced users and
developers. Based upon the experiences we made when wanting to hack/fix wmii,
we agreed upon the following goals for i3:
</p> 
 
<ol> 
  <li> 
    Write well readable, well <strong>documented</strong> code. Create additional
    documentation on how to extend i3 by explaining its internal workings.
    <br /> 
    This includes being modifiable by people who do know how to program but who are
    not necessarily familiar with all of X11’s internals. That is, document why
    things happen and when they happen so that the user gets a picture of the whole
    process a Window Manager is responsible of by just reading the source code.
  </li> 
  <li> 
    Use xcb as far as possible (it does not provide functions for some features
    yet, like XKB) instead of Xlib. xcb has a much cleaner API and should be faster
    in quite a lot of situations.
  </li> 
  <li> 
    Implement multi-monitor correctly, that is by assigning each workspace to a
    virtual screen. Especially make sure that attaching and detaching new monitors
    like video projectors works during operation and does the right thing. Also
    provide support for rotated monitors.
  </li> 
  <li> 
    Use a tree as data structure. This allows for more flexible layouts than
    the column-based approach used by other window managers.
  </li> 
  <li> 
    Implement different modes, like in vim. You can use different keybindings
    when in the 'resize' mode than when you are in the default mode, for
    example.
  </li> 
  <li> 
    Do <strong>not</strong> use programs such as autoconf/automake for configuration and
    creating unreadable/broken makefiles. Instead, use a clean makefile which automatically
    enables/disables features for specific platforms. Also, document the dependencies
    properly, so that package maintainers have an easy job packaging i3.
  </li> 
  <li> 
    Implement an IPC interface for other programs. Provide subscription to
    certain events and accept commands.
    <br /> 
    This approach should be more lightweight than wmii’s usage of the 9P filesystem.
    Furthermore, core functionality does not depend on a separate program, so that i3
    runs faster, especially when your system is under load.
  </li> 
  <li> 
    Be UTF-8 clean.
  </li> 
  <li> 
    The usual elitism amongst minimal window managers: Don’t be bloated, don’t be fancy
    (simple borders are the most decoration we want to have), don’t add support for Xft
    and blurred fonts.
    <br /> 
    However, we do not enforce unnecessary limits such as a maximum amount of source lines
    of code. If it needs to be a bit bigger, it will be.
  </li> 
</ol> 
 
</div>
