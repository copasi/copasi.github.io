/* eslint-disable max-len */

COPASI = function () {
  'use strict';

  async function getAgentInfo() {
    var result = { platform: undefined, platformVersion: undefined, architecture: undefined, bitness: undefined };
    const uaData = navigator.userAgentData;

    if (typeof uaData !== 'undefined') {
      try {
        result.platform = uaData.platform;
      }
      catch (err) { }

      try {
        highEntropyValues = await uaData.getHighEntropyValues(['architecture', 'bitness', 'model', 'platformVersion', 'uaFullVersion', 'fullVersionList', 'wow64'])

        if ('architecture' in highEntropyValues) {
          result.architecture = highEntropyValues.architecture;
        }
        if ('bitness' in highEntropyValues) {
          result.bitness = highEntropyValues.bitness;
        }
        if ('platformVersion' in highEntropyValues) {
          result.platformVersion = highEntropyValues.platformVersion;
        }
      }
      catch (err) { };
    }

    var parser = new UAParser();

    if (typeof result.platform === 'undefined') {
      result.platform = parser.getOS().name;
    }

    if (typeof result.platformVersion === 'undefined') {
      result.platformVersion = parser.getOS().version;
    }

    if (typeof result.architecture === 'undefined') {
      result.architecture = parser.getCPU().architecture;
    }

    if (typeof result.bitness === 'undefined' && typeof result.architecture !== 'undefined') {
      if (result.architecture.match('64')) {
        result.bitness = '64';
      } else if (result.architecture.match('32')) {
        result.bitness = '32';
      }
    }

    var linuxDistros = ['Arch', 'CentOS', 'Fedora', 'Debian', 'Gentoo', 'Hurd', 'Linpus', 'Linux', 'Mageia', 'Mandriva', 'MeeGo', 'Minix', 'Mint', 'PCLinuxOS', 'QNX', 'RedHat', 'Slackware', 'SUSE', 'Ubuntu', 'VectorLinux', 'Zenwalk'];

    // map macOS to Mac OS
    if (typeof result.platform !== 'undefined') {
      if (result.platform == 'macOS') {
        result.platform = 'Mac OS';
      } else if (linuxDistros.indexOf(result.platform) != -1) {
        result.platform = 'Linux';
      }
    }

    // x86 is ambiguous
    if (typeof result.architecture !== 'undefined'
      && result.architecture == 'x86') {
      if (typeof result.bitness !== 'undefined'
        && result.bitness == '64') {
        result.architecture = 'amd64';
      } else {
        result.architecture = 'ia32';
      }
    }

    return result;

  };

  function getBuildNumber(name) {
    var regex_build = /\(Build ([0-9]+)\)/;
    var match = regex_build.exec(name);

    return parseInt(match[1], 10);
  }

  function getVersion(name) {
    var regex_build = /COPASI ([0-9]+)\.([0-9]+) \(Build ([0-9]+)\)/;
    var match = regex_build.exec(name);

    return match[1] + '.' + match[2] + '.' + match[3];
  }

  function getApplication(filenemae) {
    var regex_AllSE = /AllSE/;
    var regex_java = /java/i;
    var regex_python = /python/i;
    var regex_perl = /perl/i;
    var regex_csharp = /(mono|C.-Bindings)/;
    var regex_documentation = /\.pdf$/i;

    var Use = 'COPASI';

    if (regex_AllSE.test(filename)) {
      Use = 'Simulation Engines for all platforms<br />(for use in heterogenous clusters)';
    } else if (regex_documentation.test(filename)) {
      Use = 'Documentation';
    } else if (regex_java.test(filename)) {
      Use = 'Language Bindings: Java';
    } else if (regex_python.test(filename)) {
      Use = 'Language Bindings: Python';
    } else if (regex_perl.test(filename)) {
      Use = 'Language Bindings: Perl';
    } else if (regex_csharp.test(filename)) {
      Use = 'Language Bindings: C#';
    }

    return Use;
  }
  function getFileInfo() {
    var info = {
      platform: undefined,
      platformVersion: undefined,
      architecture: undefined,
      bitness: undefined,
      icon: 'none',
      title: 'Any OS'
    };

    if (getApplication(filename) != 'COPASI') {
      return info;
    }

    var regex_darwin_monterey_arm = /darwin-arm/i;
    var regex_darwin_monterey_intel = /darwin-intel/i;
    var regex_darwin_64 = /(darwin|macosx).*64/i;
    var regex_darwin = /(darwin|macosx|tiger|leopard)/i;
    var regex_linux_64 = /linux.*64/i;
    var regex_linux_32 = /linux/i;
    var regex_SunOS = /sunos/i;
    var regex_source = /(src|source)/i;
    var regex_Windows_64 = /win.*64/i;
    var regex_Windows_32 = /win.*32/i;
    var regex_Windows = /win/i;

    if (regex_darwin_monterey_arm.test(filename)) {
      info.platform = 'Mac OS';
      info.platformVersion = /^1[2-9]/;
      info.architecture = 'arm';
      info.bitness = '64';
      info.icon = 'osx_icon.png';
      info.title = 'Mac OS X Monterey (arm)';
    } else if (regex_darwin_monterey_intel.test(filename)) {
      info.platform = 'Mac OS';
      info.platformVersion = /^1[2-9]/;
      info.architecture = 'amd64';
      info.bitness = '64';
      info.icon = 'osx_icon.png';
      info.title = 'Mac OS X Monterey (Intel)';
    } else if (regex_darwin_64.test(filename)) {
      info.platform = 'Mac OS';
      info.architecture = 'amd64';
      info.bitness = '64';
      info.icon = 'osx_icon.png';
      info.title = 'Mac OS X (64 bit)';
    } else if (regex_darwin.test(filename)) {
      info.platform = 'Mac OS';
      info.icon = 'osx_icon.png';
      info.title = 'Mac OS X';
    } else if (regex_linux_64.test(filename)) {
      info.platform = 'Linux';
      info.architecture = 'amd64';
      info.bitness = '64';
      info.icon = 'linux_icon.png';
      info.title = 'Linux (64 bit)';
    } else if (regex_linux_32.test(filename)) {
      info.platform = 'Linux';
      info.architecture = 'ia32';
      info.bitness = '32';
      info.icon = 'linux_icon.png';
      info.title = 'Linux (32 bit)';
    } else if (regex_SunOS.test(filename)) {
      info.platform = /Solaris/i;
      info.icon = 'none';
      info.title = 'Sun OS';
    } else if (regex_source.test(filename)) {
      info.platform = /.*/;
      info.icon = 'none';
      info.title = 'Source Code';
    } else if (regex_Windows_64.test(filename)) {
      info.platform = 'Windows';
      info.architecture = 'amd64';
      info.bitness = '64';
      info.icon = 'windows_icon.png';
      info.title = 'Windows (64 bit)';
    } else if (regex_Windows_32.test(filename)) {
      info.platform = 'Windows';
      info.architecture = 'ia32';
      info.bitness = '32';
      info.icon = 'windows_icon.png';
      info.title = 'Windows (32 bit)';
    } else if (regex_Windows.test(filename)) {
      info.platform = 'Windows';
      info.bitness = /32|64/;
      info.icon = 'windows_icon.png';
      info.title = 'Windows';
    }

    return info;

  };

  function scoreFile(agentInfo, fileInfo) {

    var score = 0;

    score += 8 * scoreComponent(agentInfo.platform, fileInfo.platform);
    score += 4 * scoreComponent(agentInfo.platformVersion, fileInfo.platformVersion);
    score += 2 * scoreComponent(agentInfo.architecture, fileInfo.architecture);
    score += 1 * scoreComponent(agentInfo.bitness, fileInfo.bitness);

    return score;
  };

  function scoreComponent(c1, c2) {
    if (typeof c1 !== 'undefined'
      && typeof c2 !== 'undefined') {
      if (c1.match(c2)) {
        return 1;
      } else {
        return -1
      }
    }

    return 0;
  }

  return {
    init: init,
    change: change
  }
}();

