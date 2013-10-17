# This Makefile is for the WWW::TheEchoNest extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.68 (Revision: 66800) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     ABSTRACT_FROM => q[lib/WWW/TheEchoNest.pm]
#     AUTHOR => [q[Aaron Johnson <aaronjjohnson@gmail.com>]]
#     BUILD_REQUIRES => { Test::More=>q[0] }
#     CONFIGURE_REQUIRES => { ExtUtils::MakeMaker=>q[0] }
#     LICENSE => q[Artistic_2_0]
#     MIN_PERL_VERSION => q[5.006]
#     NAME => q[WWW::TheEchoNest]
#     PL_FILES => {  }
#     PREREQ_PM => { Class::MOP::Class::Immutable::Trait=>q[2.0802], Moose::Meta::Method::Accessor::Native::Counter::inc=>q[2.0802], Moose::Meta::Attribute::Native::Trait::Code=>q[2.0802], Moose::Meta::Role::Application::ToRole=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::is_empty=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::uniq=>q[2.0802], Moose::Meta::Class::Immutable::Trait=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::elements=>q[2.0802], Moose::Meta::Role::Composite=>q[2.0802], Moose::Autobox::List=>q[0.11], Moose::Meta::Method::Overridden=>q[2.0802], Moose::Meta::Role::Application::ToInstance=>q[2.0802], Class::MOP::Module=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::accessor=>q[2.0802], Moose::Meta::Attribute::Native=>q[2.0802], Moose::Meta::Method::Accessor::Native::String::clear=>q[2.0802], Moose::Meta::Attribute::Native::Trait::Counter=>q[2.0802], Moose::Exporter=>q[2.0802], Moose::Conflicts=>q[0], Moose::Meta::Method::Accessor::Native::Array::sort=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::set=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::shallow_clone=>q[2.0802], Moose::Meta::Method::Accessor::Native::Counter::reset=>q[2.0802], Class::MOP::Method::Overload=>q[2.0802], Moose::Meta::Method::Accessor::Native::Number::add=>q[2.0802], Moose::Meta::TypeConstraint::Enum=>q[2.0802], Moose::Meta::Method::Accessor::Native::String::prepend=>q[2.0802], URI::Escape=>q[3.31], Moose::Meta::Method::Accessor::Native::Hash::Writer=>q[2.0802], Class::MOP::Mixin::HasMethods=>q[2.0802], Moose::Meta::Role=>q[2.0802], Moose::Util::TypeConstraints=>q[2.0802], Moose::Meta::Method::Accessor::Native::Number::mod=>q[2.0802], Class::MOP::Method::Inlined=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::splice=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::reduce=>q[2.0802], Moose=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::shuffle=>q[2.0802], Moose::Meta::Method::Accessor::Native::String::chop=>q[2.0802], Moose::Meta::Method::Augmented=>q[2.0802], Moose::Util::TypeConstraints::Builtins=>q[2.0802], Moose::Meta::TypeConstraint::Parameterized=>q[2.0802], Moose::Util::MetaRole=>q[2.0802], Moose::Meta::Method::Meta=>q[2.0802], Moose::Autobox::Indexed=>q[0.11], Moose::Meta::Role::Application::RoleSummation=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::insert=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::shallow_clone=>q[2.0802], Moose::Meta::TypeConstraint::Registry=>q[2.0802], Moose::Meta::Method::Constructor=>q[2.0802], Moose::Meta::Instance=>q[2.0802], Moose::Meta::Method::Accessor::Native::Bool::toggle=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::join=>q[2.0802], Moose::Meta::Mixin::AttributeCore=>q[2.0802], Moose::Meta::Role::Attribute=>q[2.0802], WWW::Mechanize=>q[1.72], Moose::Meta::Method::Accessor::Native::Array::grep=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::values=>q[2.0802], Test::More=>q[0], Moose::Meta::Method::Accessor::Native::Array::set=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::first=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::sort_in_place=>q[2.0802], Moose::Meta::Attribute::Native::Trait::String=>q[2.0802], Moose::Meta::Method::Accessor::Native::Bool::set=>q[2.0802], Moose::Meta::TypeConstraint::Class=>q[2.0802], Moose::Meta::Method::Accessor::Native::Writer=>q[2.0802], Class::MOP::Method::Wrapped=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::unshift=>q[2.0802], XML::Simple=>q[2.18], Moose::Meta::Method::Accessor::Native::Code::execute_method=>q[2.0802], Moose::Meta::Class=>q[2.0802], Moose::Meta::Method::Accessor::Native::Number::mul=>q[2.0802], Moose::Meta::Method::Destructor=>q[2.0802], Moose::Meta::Attribute::Native::Trait=>q[2.0802], Moose::Meta::Attribute::Native::Trait::Number=>q[2.0802], Moose::Meta::Method::Accessor::Native::String::match=>q[2.0802], Moose::Autobox::Item=>q[0.11], Moose::Error::Croak=>q[2.0802], Moose::Autobox::Number=>q[0.11], Moose::Meta::Object::Trait=>q[2.0802], Class::MOP::Mixin=>q[2.0802], Moose::Meta::Method::Accessor::Native::String::inc=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::count=>q[2.0802], Class::MOP::Method::Accessor=>q[2.0802], Moose::Meta::Method::Accessor::Native::Reader=>q[2.0802], Moose::Meta::TypeConstraint::Parameterizable=>q[2.0802], JSON::XS=>q[2.34], Moose::Meta::Method::Accessor::Native::Array::natatime=>q[2.0802], Moose::Meta::TypeConstraint::DuckType=>q[2.0802], Moose::Autobox::Code=>q[0.11], Moose::Meta::Method::Accessor::Native::Bool::unset=>q[2.0802], Class::MOP::Object=>q[2.0802], Class::MOP::Deprecated=>q[2.0802], Class::MOP::Method::Meta=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::count=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::delete=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::get=>q[2.0802], Class::MOP::Method::Generated=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::map=>q[2.0802], Moose::Util=>q[2.0802], Moose::Error::Util=>q[0], Class::MOP::Class=>q[2.0802], Class::MOP::Instance=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::delete=>q[2.0802], Moose::Autobox::Array=>q[0.11], Moose::Meta::Method::Accessor::Native::Array::first_index=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::clear=>q[2.0802], Moose::Meta::Method::Accessor::Native::Number::abs=>q[2.0802], Moose::Autobox::String=>q[0.11], Moose::Meta::Method::Accessor::Native::Code::execute=>q[2.0802], Moose::Autobox::Ref=>q[0.11], Moose::Meta::Method::Accessor::Native::String::replace=>q[2.0802], Moose::Error::Default=>q[2.0802], Moose::Meta::Method::Accessor::Native::String::chomp=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::kv=>q[2.0802], Moose::Meta::Method::Accessor::Native::Collection=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::accessor=>q[2.0802], Class::MOP::Method::Constructor=>q[2.0802], Moose::Meta::TypeConstraint::Role=>q[2.0802], Moose::Meta::Role::Method=>q[2.0802], Moose::Meta::Method::Accessor::Native::Bool::not=>q[2.0802], Moose::Meta::Method::Accessor::Native::Number::sub=>q[2.0802], Moose::Meta::TypeCoercion::Union=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash=>q[2.0802], Moose::Meta::Method=>q[2.0802], JSON::Path=>q[0.204], Moose::Meta::Role::Method::Conflicting=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::keys=>q[2.0802], Moose::Error::Confess=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::exists=>q[2.0802], Moose::Meta::Method::Accessor::Native=>q[2.0802], Moose::Meta::Method::Accessor::Native::Number::div=>q[2.0802], Moose::Meta::Attribute::Native::Trait::Array=>q[2.0802], Moose::Meta::Method::Accessor::Native::Counter::dec=>q[2.0802], Moose::Meta::Method::Accessor::Native::Number::set=>q[2.0802], Class::MOP::Attribute=>q[2.0802], Moose::Autobox::Defined=>q[0.11], Moose::Meta::Method::Accessor::Native::Counter::Writer=>q[2.0802], Class::MOP::MiniTrait=>q[2.0802], Moose::Cookbook::Legacy::Labeled_AttributeMetaclass=>q[2.0802], Moose::Object=>q[2.0802], Moose::Role=>q[2.0802], Moose::Meta::Method::Accessor::Native::Counter::set=>q[2.0802], Moose::Autobox::Value=>q[0.11], Moose::Meta::Method::Accessor::Native::Array::is_empty=>q[2.0802], Moose::Cookbook::Legacy::Debugging_BaseClassReplacement=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::push=>q[2.0802], Moose::Meta::Method::Accessor::Native::String::append=>q[2.0802], Moose::Autobox=>q[0.11], Moose::Meta::Method::Accessor::Native::Array::shift=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::get=>q[2.0802], Moose::Meta::Attribute::Native::Trait::Bool=>q[2.0802], Moose::Autobox::Hash=>q[0.11], Class::MOP::Package=>q[2.0802], Moose::Meta::Attribute::Native::Trait::Hash=>q[2.0802], Moose::Autobox::Undef=>q[0.11], Moose::Meta::Role::Method::Required=>q[2.0802], Moose::Meta::Method::Accessor::Native::String::substr=>q[2.0802], Class::MOP::Mixin::AttributeCore=>q[2.0802], Moose::Meta::Attribute=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::elements=>q[2.0802], Class::MOP::Mixin::HasAttributes=>q[2.0802], Moose::Deprecated=>q[2.0802], Moose::Meta::Method::Accessor=>q[2.0802], Class::MOP::Method=>q[2.0802], Moose::Meta::Method::Accessor::Native::String::length=>q[2.0802], Moose::Meta::TypeConstraint=>q[2.0802], Moose::Meta::Method::Delegation=>q[2.0802], Moose::Meta::TypeConstraint::Union=>q[2.0802], Moose::Autobox::Scalar=>q[0.11], Moose::Meta::TypeCoercion=>q[2.0802], Moose::Meta::Role::Application=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::pop=>q[2.0802], Moose::Meta::Method::Accessor::Native::Hash::defined=>q[2.0802], Moose::Meta::Role::Application::ToClass=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::clear=>q[2.0802], Moose::Meta::Method::Accessor::Native::Array::Writer=>q[2.0802] }
#     TEST_REQUIRES => {  }
#     VERSION_FROM => q[lib/WWW/TheEchoNest.pm]
#     clean => { FILES=>q[WWW-TheEchoNest-*] }
#     dist => { COMPRESS=>q[gzip -9f], SUFFIX=>q[gz] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /System/Library/Perl/5.12/darwin-thread-multi-2level/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = clang
CCCDLFLAGS =  
CCDLFLAGS =  
DLEXT = bundle
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = clang -mmacosx-version-min=10.8
LDDLFLAGS = -arch i386 -arch x86_64 -bundle -undefined dynamic_lookup -L/usr/local/lib -fstack-protector
LDFLAGS = -arch i386 -arch x86_64 -fstack-protector -L/usr/local/lib
LIBC = 
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = darwin
OSVERS = 12.0
RANLIB = /usr/bin/ar s
SITELIBEXP = /Library/Perl/5.12
SITEARCHEXP = /Library/Perl/5.12/darwin-thread-multi-2level
SO = dylib
VENDORARCHEXP = /Network/Library/Perl/5.12/darwin-thread-multi-2level
VENDORLIBEXP = /Network/Library/Perl/5.12


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = WWW::TheEchoNest
NAME_SYM = WWW_TheEchoNest
VERSION = 0.1
VERSION_MACRO = VERSION
VERSION_SYM = 0_1
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 0.1
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1
MAN3EXT = 3pm
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /
SITEPREFIX = /usr/local
VENDORPREFIX = /usr/local
INSTALLPRIVLIB = /Library/Perl/Updates/5.12.4
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /Library/Perl/5.12
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = /Network/Library/Perl/5.12
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /Library/Perl/Updates/5.12.4/darwin-thread-multi-2level
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /Library/Perl/5.12/darwin-thread-multi-2level
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = /Network/Library/Perl/5.12/darwin-thread-multi-2level
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /usr/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /usr/local/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = /usr/local/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /usr/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = /usr/local/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = /usr/local/bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = /usr/share/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /usr/local/share/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = /usr/local/share/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /usr/share/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /usr/local/share/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = /usr/local/share/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /System/Library/Perl/5.12
PERL_ARCHLIB = /System/Library/Perl/5.12/darwin-thread-multi-2level
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /System/Library/Perl/5.12/darwin-thread-multi-2level/CORE
PERL = /usr/bin/perl
FULLPERL = /usr/bin/perl
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /Library/Perl/Updates/5.12.4/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.68
MM_REVISION = 66800

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = WWW/TheEchoNest
BASEEXT = TheEchoNest
PARENT_NAME = WWW
DLBASE = $(BASEEXT)
VERSION_FROM = lib/WWW/TheEchoNest.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = lib/WWW/was_TheEchoNest.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/WWW
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/WWW

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/.DS_Store \
	lib/WWW/TheEchoNest.pm \
	lib/WWW/was_TheEchoNest.pm

PM_TO_BLIB = lib/WWW/was_TheEchoNest.pm \
	blib/lib/WWW/was_TheEchoNest.pm \
	lib/WWW/TheEchoNest.pm \
	blib/lib/WWW/TheEchoNest.pm \
	lib/.DS_Store \
	blib/lib/.DS_Store


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.68
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$$$ARGV[0], $$$$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = COPY_EXTENDED_ATTRIBUTES_DISABLE=1 COPYFILE_DISABLE=1 tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip -9f
SUFFIX = gz
SHAR = shar
PREOP = $(NOECHO) $(NOOP)
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = WWW-TheEchoNest
DISTVNAME = WWW-TheEchoNest-0.1


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	lib/WWW/was_TheEchoNest.pm
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/WWW/was_TheEchoNest.pm $(INST_MAN3DIR)/WWW::was_TheEchoNest.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  *$(LIB_EXT) core \
	  core.[0-9] $(INST_ARCHAUTODIR)/extralibs.all \
	  core.[0-9][0-9] $(BASEEXT).bso \
	  pm_to_blib.ts MYMETA.json \
	  core.[0-9][0-9][0-9][0-9] MYMETA.yml \
	  $(BASEEXT).x $(BOOTSTRAP) \
	  perl$(EXE_EXT) tmon.out \
	  *$(OBJ_EXT) pm_to_blib \
	  $(INST_ARCHAUTODIR)/extralibs.ld blibdirs.ts \
	  core.[0-9][0-9][0-9][0-9][0-9] *perl.core \
	  core.*perl.*.? $(MAKE_APERL_FILE) \
	  $(BASEEXT).def perl \
	  core.[0-9][0-9][0-9] mon.out \
	  lib$(BASEEXT).def perlmain.c \
	  perl.exe so_locations \
	  $(BASEEXT).exp 
	- $(RM_RF) \
	  WWW-TheEchoNest-* blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '---' > META_new.yml
	$(NOECHO) $(ECHO) 'abstract: unknown' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:' >> META_new.yml
	$(NOECHO) $(ECHO) '  - '\''Aaron Johnson <aaronjjohnson@gmail.com>'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'build_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  Test::More: 0' >> META_new.yml
	$(NOECHO) $(ECHO) 'configure_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: 0' >> META_new.yml
	$(NOECHO) $(ECHO) 'dynamic_config: 1' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by: '\''ExtUtils::MakeMaker version 6.68, CPAN::Meta::Converter version 2.112621'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'license: unknown' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '  url: http://module-build.sourceforge.net/META-spec-v1.4.html' >> META_new.yml
	$(NOECHO) $(ECHO) '  version: 1.4' >> META_new.yml
	$(NOECHO) $(ECHO) 'name: WWW-TheEchoNest' >> META_new.yml
	$(NOECHO) $(ECHO) 'no_index:' >> META_new.yml
	$(NOECHO) $(ECHO) '  directory:' >> META_new.yml
	$(NOECHO) $(ECHO) '    - t' >> META_new.yml
	$(NOECHO) $(ECHO) '    - inc' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Attribute: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Class: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Class::Immutable::Trait: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Deprecated: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Instance: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Method: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Method::Accessor: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Method::Constructor: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Method::Generated: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Method::Inlined: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Method::Meta: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Method::Overload: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Method::Wrapped: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::MiniTrait: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Mixin: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Mixin::AttributeCore: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Mixin::HasAttributes: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Mixin::HasMethods: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Module: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Object: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::MOP::Package: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  JSON::Path: 0.204' >> META_new.yml
	$(NOECHO) $(ECHO) '  JSON::XS: 2.34' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Array: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Code: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Defined: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Hash: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Indexed: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Item: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::List: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Number: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Ref: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Scalar: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::String: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Undef: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Autobox::Value: 0.11' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Conflicts: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Cookbook::Legacy::Debugging_BaseClassReplacement: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Cookbook::Legacy::Labeled_AttributeMetaclass: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Deprecated: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Error::Confess: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Error::Croak: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Error::Default: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Error::Util: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Exporter: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Attribute: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Attribute::Native: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Attribute::Native::Trait: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Attribute::Native::Trait::Array: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Attribute::Native::Trait::Bool: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Attribute::Native::Trait::Code: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Attribute::Native::Trait::Counter: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Attribute::Native::Trait::Hash: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Attribute::Native::Trait::Number: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Attribute::Native::Trait::String: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Class: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Class::Immutable::Trait: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Instance: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::Writer: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::accessor: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::clear: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::count: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::delete: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::elements: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::first: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::first_index: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::get: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::grep: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::insert: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::is_empty: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::join: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::map: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::natatime: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::pop: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::push: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::reduce: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::set: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::shallow_clone: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::shift: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::shuffle: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::sort: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::sort_in_place: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::splice: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::uniq: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Array::unshift: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Bool::not: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Bool::set: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Bool::toggle: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Bool::unset: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Code::execute: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Code::execute_method: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Collection: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Counter::Writer: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Counter::dec: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Counter::inc: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Counter::reset: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Counter::set: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::Writer: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::accessor: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::clear: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::count: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::defined: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::delete: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::elements: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::exists: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::get: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::is_empty: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::keys: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::kv: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::set: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::shallow_clone: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Hash::values: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Number::abs: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Number::add: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Number::div: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Number::mod: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Number::mul: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Number::set: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Number::sub: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Reader: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::String::append: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::String::chomp: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::String::chop: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::String::clear: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::String::inc: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::String::length: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::String::match: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::String::prepend: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::String::replace: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::String::substr: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Accessor::Native::Writer: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Augmented: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Constructor: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Delegation: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Destructor: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Meta: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Method::Overridden: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Mixin::AttributeCore: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Object::Trait: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role::Application: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role::Application::RoleSummation: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role::Application::ToClass: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role::Application::ToInstance: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role::Application::ToRole: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role::Attribute: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role::Composite: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role::Method: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role::Method::Conflicting: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::Role::Method::Required: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeCoercion: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeCoercion::Union: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeConstraint: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeConstraint::Class: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeConstraint::DuckType: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeConstraint::Enum: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeConstraint::Parameterizable: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeConstraint::Parameterized: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeConstraint::Registry: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeConstraint::Role: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Meta::TypeConstraint::Union: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Object: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Role: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Util: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Util::MetaRole: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Util::TypeConstraints: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moose::Util::TypeConstraints::Builtins: 2.0802' >> META_new.yml
	$(NOECHO) $(ECHO) '  URI::Escape: 3.31' >> META_new.yml
	$(NOECHO) $(ECHO) '  WWW::Mechanize: 1.72' >> META_new.yml
	$(NOECHO) $(ECHO) '  XML::Simple: 2.18' >> META_new.yml
	$(NOECHO) $(ECHO) '  perl: 5.006' >> META_new.yml
	$(NOECHO) $(ECHO) 'version: 0.1' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml
	$(NOECHO) $(ECHO) Generating META.json
	$(NOECHO) $(ECHO) '{' > META_new.json
	$(NOECHO) $(ECHO) '   "abstract" : "unknown",' >> META_new.json
	$(NOECHO) $(ECHO) '   "author" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "Aaron Johnson <aaronjjohnson@gmail.com>"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "dynamic_config" : 1,' >> META_new.json
	$(NOECHO) $(ECHO) '   "generated_by" : "ExtUtils::MakeMaker version 6.68, CPAN::Meta::Converter version 2.112621",' >> META_new.json
	$(NOECHO) $(ECHO) '   "license" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "unknown"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "meta-spec" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "url" : "http://search.cpan.org/perldoc?CPAN::Meta::Spec",' >> META_new.json
	$(NOECHO) $(ECHO) '      "version" : "2"' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "name" : "WWW-TheEchoNest",' >> META_new.json
	$(NOECHO) $(ECHO) '   "no_index" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "directory" : [' >> META_new.json
	$(NOECHO) $(ECHO) '         "t",' >> META_new.json
	$(NOECHO) $(ECHO) '         "inc"' >> META_new.json
	$(NOECHO) $(ECHO) '      ]' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "prereqs" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "build" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "Test::More" : 0' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "configure" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : 0' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "runtime" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Attribute" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Class" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Class::Immutable::Trait" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Deprecated" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Instance" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Method" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Method::Accessor" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Method::Constructor" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Method::Generated" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Method::Inlined" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Method::Meta" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Method::Overload" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Method::Wrapped" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::MiniTrait" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Mixin" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Mixin::AttributeCore" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Mixin::HasAttributes" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Mixin::HasMethods" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Module" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Object" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::MOP::Package" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "JSON::Path" : "0.204",' >> META_new.json
	$(NOECHO) $(ECHO) '            "JSON::XS" : "2.34",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Array" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Code" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Defined" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Hash" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Indexed" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Item" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::List" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Number" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Ref" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Scalar" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::String" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Undef" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Autobox::Value" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Conflicts" : 0,' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Cookbook::Legacy::Debugging_BaseClassReplacement" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Cookbook::Legacy::Labeled_AttributeMetaclass" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Deprecated" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Error::Confess" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Error::Croak" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Error::Default" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Error::Util" : 0,' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Exporter" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Attribute" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Attribute::Native" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Attribute::Native::Trait" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Attribute::Native::Trait::Array" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Attribute::Native::Trait::Bool" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Attribute::Native::Trait::Code" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Attribute::Native::Trait::Counter" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Attribute::Native::Trait::Hash" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Attribute::Native::Trait::Number" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Attribute::Native::Trait::String" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Class" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Class::Immutable::Trait" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Instance" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::Writer" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::accessor" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::clear" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::count" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::delete" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::elements" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::first" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::first_index" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::get" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::grep" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::insert" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::is_empty" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::join" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::map" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::natatime" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::pop" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::push" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::reduce" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::set" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::shallow_clone" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::shift" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::shuffle" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::sort" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::sort_in_place" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::splice" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::uniq" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Array::unshift" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Bool::not" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Bool::set" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Bool::toggle" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Bool::unset" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Code::execute" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Code::execute_method" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Collection" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Counter::Writer" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Counter::dec" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Counter::inc" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Counter::reset" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Counter::set" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::Writer" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::accessor" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::clear" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::count" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::defined" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::delete" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::elements" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::exists" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::get" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::is_empty" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::keys" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::kv" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::set" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::shallow_clone" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Hash::values" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Number::abs" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Number::add" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Number::div" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Number::mod" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Number::mul" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Number::set" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Number::sub" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Reader" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::String::append" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::String::chomp" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::String::chop" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::String::clear" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::String::inc" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::String::length" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::String::match" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::String::prepend" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::String::replace" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::String::substr" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Accessor::Native::Writer" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Augmented" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Constructor" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Delegation" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Destructor" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Meta" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Method::Overridden" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Mixin::AttributeCore" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Object::Trait" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role::Application" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role::Application::RoleSummation" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role::Application::ToClass" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role::Application::ToInstance" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role::Application::ToRole" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role::Attribute" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role::Composite" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role::Method" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role::Method::Conflicting" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::Role::Method::Required" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeCoercion" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeCoercion::Union" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeConstraint" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeConstraint::Class" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeConstraint::DuckType" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeConstraint::Enum" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeConstraint::Parameterizable" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeConstraint::Parameterized" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeConstraint::Registry" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeConstraint::Role" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Meta::TypeConstraint::Union" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Object" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Role" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Util" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Util::MetaRole" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Util::TypeConstraints" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moose::Util::TypeConstraints::Builtins" : "2.0802",' >> META_new.json
	$(NOECHO) $(ECHO) '            "URI::Escape" : "3.31",' >> META_new.json
	$(NOECHO) $(ECHO) '            "WWW::Mechanize" : "1.72",' >> META_new.json
	$(NOECHO) $(ECHO) '            "XML::Simple" : "2.18",' >> META_new.json
	$(NOECHO) $(ECHO) '            "perl" : "5.006"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      }' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "release_status" : "stable",' >> META_new.json
	$(NOECHO) $(ECHO) '   "version" : "0.1"' >> META_new.json
	$(NOECHO) $(ECHO) '}' >> META_new.json
	-$(NOECHO) $(MV) META_new.json $(DISTVNAME)/META.json


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old 



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta 
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -e q{META.yml};' \
	  -e 'eval { maniadd({q{META.yml} => q{Module YAML meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.yml to MANIFEST: $$$${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -f q{META.json};' \
	  -e 'eval { maniadd({q{META.json} => q{Module JSON meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.json to MANIFEST: $$$${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $$$${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="$(VERSION)">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT></ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Aaron Johnson &lt;aaronjjohnson@gmail.com&gt;</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <PERLCORE VERSION="5,006,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Attribute" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Class" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Class::Immutable::Trait" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Deprecated" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Instance" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Method" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Method::Accessor" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Method::Constructor" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Method::Generated" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Method::Inlined" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Method::Meta" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Method::Overload" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Method::Wrapped" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::MiniTrait" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Mixin" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Mixin::AttributeCore" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Mixin::HasAttributes" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Mixin::HasMethods" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Module" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Object" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP::Package" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="JSON::Path" VERSION="0.204" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="JSON::XS" VERSION="2.34" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Array" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Code" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Defined" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Hash" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Indexed" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Item" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::List" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Number" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Ref" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Scalar" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::String" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Undef" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Autobox::Value" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Conflicts" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Cookbook::Legacy::Debugging_BaseClassReplacement" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Cookbook::Legacy::Labeled_AttributeMetaclass" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Deprecated" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Error::Confess" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Error::Croak" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Error::Default" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Error::Util" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Exporter" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Attribute" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Attribute::Native" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Attribute::Native::Trait" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Attribute::Native::Trait::Array" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Attribute::Native::Trait::Bool" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Attribute::Native::Trait::Code" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Attribute::Native::Trait::Counter" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Attribute::Native::Trait::Hash" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Attribute::Native::Trait::Number" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Attribute::Native::Trait::String" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Class" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Class::Immutable::Trait" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Instance" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::Writer" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::accessor" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::clear" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::count" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::delete" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::elements" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::first" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::first_index" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::get" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::grep" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::insert" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::is_empty" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::join" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::map" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::natatime" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::pop" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::push" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::reduce" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::set" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::shallow_clone" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::shift" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::shuffle" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::sort" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::sort_in_place" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::splice" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::uniq" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Array::unshift" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Bool::not" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Bool::set" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Bool::toggle" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Bool::unset" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Code::execute" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Code::execute_method" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Collection" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Counter::Writer" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Counter::dec" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Counter::inc" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Counter::reset" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Counter::set" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::Writer" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::accessor" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::clear" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::count" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::defined" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::delete" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::elements" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::exists" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::get" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::is_empty" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::keys" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::kv" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::set" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::shallow_clone" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Hash::values" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Number::abs" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Number::add" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Number::div" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Number::mod" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Number::mul" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Number::set" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Number::sub" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Reader" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::String::append" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::String::chomp" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::String::chop" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::String::clear" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::String::inc" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::String::length" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::String::match" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::String::prepend" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::String::replace" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::String::substr" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Accessor::Native::Writer" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Augmented" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Constructor" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Delegation" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Destructor" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Meta" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Method::Overridden" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Mixin::AttributeCore" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Object::Trait" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role::Application" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role::Application::RoleSummation" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role::Application::ToClass" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role::Application::ToInstance" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role::Application::ToRole" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role::Attribute" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role::Composite" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role::Method" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role::Method::Conflicting" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::Role::Method::Required" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeCoercion" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeCoercion::Union" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeConstraint" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeConstraint::Class" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeConstraint::DuckType" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeConstraint::Enum" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeConstraint::Parameterizable" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeConstraint::Parameterized" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeConstraint::Registry" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeConstraint::Role" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Meta::TypeConstraint::Union" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Object" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Role" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Util" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Util::MetaRole" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Util::TypeConstraints" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::Util::TypeConstraints::Builtins" VERSION="2.0802" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="URI::Escape" VERSION="3.31" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="WWW::Mechanize" VERSION="1.72" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="XML::Simple" VERSION="2.18" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="darwin-thread-multi-2level-5.12" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/WWW/was_TheEchoNest.pm blib/lib/WWW/was_TheEchoNest.pm \
	  lib/WWW/TheEchoNest.pm blib/lib/WWW/TheEchoNest.pm \
	  lib/.DS_Store blib/lib/.DS_Store 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
