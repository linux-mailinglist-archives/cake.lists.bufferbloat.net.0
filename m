Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C872634F631
	for <lists+cake@lfdr.de>; Wed, 31 Mar 2021 03:23:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 066D33CB61;
	Tue, 30 Mar 2021 21:23:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1617153833;
	bh=F3LtxIrG9f5K7S/gA/eCOebKxaGfiNfinT40Yh07iZs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p7/d6FTH5muMVQ9Y2aVrNRTRNo72MRSYBEHtJUC1u5K6+YYW3CcbioXCjpMltAXxP
	 It/I3lhRcRmoRERyHvuSbhdGd08ohYStgSs/q5PqkGgjT9VqvCd2dF4YugMplZ6gWp
	 ln/h5jj+c2K6CvsHkdgpNdAWQorAUm9jal0Q+zVSe96NNIfNKFCCaQqP9hE1fmA3TC
	 aK+PsU5SLVy9wNNM8hR8SZaga3tIFsBOaTPcjF8UQ2bQqgyZe7lN5Ro5j+dQMFdnSz
	 GBoqyMKuzgwRnNI3HEqbQ+HWf1pKBeqj/N5pjBJLqzmUd9Y4PoNgyizRYT59z29wzV
	 IOq8JWJhE6XCA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp113.iad3a.emailsrvr.com (smtp113.iad3a.emailsrvr.com
 [173.203.187.113])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4209C3CB55;
 Tue, 30 Mar 2021 21:23:51 -0400 (EDT)
Received: from app24.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp15.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id AFD51426B;
 Tue, 30 Mar 2021 21:23:50 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app24.wa-webapps.iad3a (Postfix) with ESMTP id 99099E0064;
 Tue, 30 Mar 2021 21:23:50 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Tue, 30 Mar 2021 21:23:50 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Tue, 30 Mar 2021 21:23:50 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Theodore Ts'o" <tytso@mit.edu>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <YGKEbCGX57z9+PdA@mit.edu>
References: <CAA93jw5+_vW3b85ZOxpOn5_LoiPgxuj4XzH3=gkq8qYM2xunSA@mail.gmail.com> 
 <1617049691.187521510@apps.rackspace.com> <YGKEbCGX57z9+PdA@mit.edu>
X-Client-IP: 209.6.168.128
Message-ID: <1617153830.6256867@apps.rackspace.com>
X-Mailer: webmail/18.1.24-RC
X-Classification-ID: 9929edfa-e77d-46a5-8d19-71cd620799c3-1-1
Subject: Re: [Cake] [Cerowrt-devel] wireguard almost takes a bullet
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============0557209898529362911=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0557209898529362911==
Content-Type: multipart/alternative;boundary="----=_20210330212350000000_87018"

------=_20210330212350000000_87018
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0ATheodore -=0A =0AI appreciate you showing the LF executive salary number=
s are not quite as high as I noted. My numbers may have been inflated, but =
I've definitely seen a $900,000 package for at least one executive reported=
 in the press (an executive who was transferred in from a F100 company whic=
h is close to the LF).=0A =0AOn the other hand, they are pretty damn high s=
alaries for a non-profit. Are they appropriate? Depends. There are no stock=
holders and no profits, just a pretty substantial net worth.=0A =0ARegardin=
g the organizaton of "Linux, Inc." as  a hierachical control structure - I'=
ll just point out that hierarchical control of the development of Linux sug=
gests that it is not at all a "community project" (if it ever was). It's a =
product development organization with multiple levels of management.=0A =0A=
Yet the developers are employees of a small number of major corporations. I=
n this sense, it is like a "joint venture" among those companies.=0A =0ATo =
the extent that those companies gain (partial) control of the Linux kernel,=
 as appears to be the case, I think Linux misrepresents itself as a "commun=
ity project", and in particular, the actual users of the software may have =
little say in the direction development takes going forwards.=0A =0AThere's=
 little safeguard, for example, against "senior management" biases in suppo=
rt of certain vendors, if other vendors are excluded from effective partici=
pation by one of many techniques. In other words, there's no way it can be =
a level playing field for innovation.=0A =0AIn that sense, the Linux kernel=
 community has reached a point very much like Microsoft Windows development=
 reached in 1990 or so. I note that date because at that point, Microsoft w=
as challenged with a variety of anti-trust actions based on the fact that i=
t used its Windows monopoly status to put competitors in the application sp=
ace, and competitors producing innovative operating systems out of business=
 (GO Computer Corporation being one example of many).=0A =0AThis troubles m=
e. It may not trouble the developers who are in the Linux community and pai=
d by the cartel of companies that control its direction.=0A =0AI have no co=
mplaint about the technical competence of individual developers - the quali=
ty is pretty high, at least as good as those who worked on Windows and macO=
S. But it's becoming clear that their is a narrowing of control of an OS th=
at has a lot of influence in a few hands. That those few hands don't work f=
or one company doesn't eliminate its tendency to become a cartel. (one that=
 is not transparent at all about functioning as such - preferring to give t=
he impression that the kernel is developed by part-time voluntary "contribu=
tions").=0A =0AThe contrast with other open source communities is quite sha=
rp now. There is little eleemosynary intent that can be detected any more. =
I think that is too bad, but things change.=0A =0AThis is just the personal=
 opinion of someone who has been developing systems for 50+ years now. I'm =
kind of disappointed, but my opinion does not really matter much.=0A =0ADav=
id=0A =0A =0A =0A =0AOn Monday, March 29, 2021 9:52pm, "Theodore Ts'o" <tyt=
so@mit.edu> said:=0A=0A=0A=0A> On Mon, Mar 29, 2021 at 04:28:11PM -0400, Da=
vid P. Reed wrote:=0A> >=0A> >=0A> > What tends to shape Linux and FreeBSD,=
 etc. are the money sources=0A> > that flow into the communities. Of course=
 Linux is quite=0A> > independently wealthy now. The senior executives of t=
he Linux=0A> > Foundation are paid nearly a million dollars a year, each. W=
hich=0A> > just indicates that major corporations are seriously interested =
in=0A> > controlling the evolution of Linux (not the Gnu part, the part tha=
t=0A> > has Linus Torvalds at its center).=0A> =0A> First of all, I don't b=
elieve your salary numbers are correct.=0A> =0A> https://nonprofitlight.com=
/ca/san-francisco/linux-foundation=0A> =0A> Secondly, the "senior executive=
s" of the Linux Foundation don't have=0A> any control over "the evolution o=
f Linux". The exception to that are=0A> the "Fellows" (e.g., Linus Torvalds=
, Greg K-H, etc.) and I can assure=0A> you that they don't take orders from=
 Jim Zemlin, the executive=0A> director, or any one else at the Linux Found=
ation.=0A> =0A> The senior developers of Linux do tend to work for the big=
=0A> corporations, but culturally, we do try to keep our "corporate hats"=
=0A> and our "community" hats quite separate, and identify when we our=0A> =
company hats on. Many senior developers have transitioned between=0A> multi=
ple companies, and over time, it's been understood that their=0A> primarily=
 allegiance is to Linux, and not to the company. In fact,=0A> the primary j=
ob of maintainers is to say "no" to companies when they=0A> try to push cra=
p code into the kernel. And that's because it's the=0A> maintainer's respon=
sibility to clean up the mess if they say yes to=0A> code that's Just Not R=
eady, since they have a long-term responsbility=0A> towards their subsystem=
, unlike engineers or contractors that only=0A> have a short-term goal to g=
et the code upstream.=0A> =0A> This is where having a hierarchial ownership=
 model IMHO works better=0A> than a "core team" model where there can be a =
diffusion of=0A> responsibility, where anyone with a commit bit can commit =
anywhere in=0A> the OS. In contrast, David Miller "owns" the networking are=
a, and so=0A> someone who might be, say, the ext4 or xfs maintainer does no=
t have=0A> the right (read: Linus will reject a pull request from me if I t=
ry to=0A> change code in the networking stack with out DaveM's signoff) to=
=0A> change code outside of their subsystem.=0A> =0A> So you're right that =
Linus probably doesn't know or care about=0A> bufferbloat. He's delegated p=
retty much all networking issues to=0A> David Miller as the networking czar=
, and within networking, David=0A> Miller has his submaintainers with diffe=
rent specialities. This does=0A> get complicated when there are changes whi=
ch cross subsystems. For=0A> example, before Wireguard could land in the ke=
rnel, there were changes=0A> needed in both the crypto and networking layer=
s, and Jason had to=0A> negotiate with multiple senior developers in those =
subsystems, and the=0A> code was subject to quite a lot of review before it=
 could land. (It=0A> took months, and we didn't try to rush things before a=
 major=0A> release....)=0A> =0A> > I just spent 9 months trying to get a ve=
ry tiny fix to the Linux=0A> > kernel into the mainline kernel. I actually =
gave up, because it=0A> > seemed utterly pointless, even though it was clea=
rly a design error=0A> > that I was fixing, and I was trying to meet all th=
e constraints on=0A> > patches. No one was fighting me, no one said it was =
wrong.=0A> =0A> It sounds like the real problem is no one was paying attent=
ion to you.=0A> There is a *huge* number of changes going into the Linux ke=
rnel, and=0A> so the the challenge is getting review bandwidth by the relev=
ant=0A> maintainers. Blindly posting to the linux-kernel mailing list will=
=0A> generally not get you very far.=0A> =0A> The Linux development process=
 is not really optimized for "drive by=0A> patching". Knowng where (and to =
whom) a patch needs to be reviewed is=0A> not necessarily easy for a novice=
, and while there are tools such as=0A> ./scripts/get_maintainer.pl that tr=
y to make it a bit easier, I can=0A> see how someone who Just Wants To Get =
A Single Patch accepted, can see=0A> it as "bureaucracy".=0A> =0A> Cheers,=
=0A> =0A> - Ted=0A> 
------=_20210330212350000000_87018
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">Theodore -</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wra=
p: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: ar=
ial; font-size: 10pt; overflow-wrap: break-word;">I appreciate you showing =
the LF executive salary numbers are not quite as high as I noted. My number=
s may have been inflated, but I've definitely seen a $900,000 package for a=
t least one executive reported in the press (an executive who was transferr=
ed in from a F100 company which is close to the LF).</p>=0A<p style=3D"marg=
in:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wo=
rd;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-s=
ize: 10pt; overflow-wrap: break-word;">On the other hand, they are pretty d=
amn high salaries for a non-profit. Are they appropriate? Depends. There ar=
e no stockholders and no profits, just a pretty substantial net worth.</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">Regarding the org=
anizaton of "Linux, Inc." as&nbsp; a hierachical control structure - I'll j=
ust point out that hierarchical control of the development of Linux suggest=
s that it is not at all a "community project" (if it ever was). It's a prod=
uct development organization with multiple levels of management.</p>=0A<p s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;">Yet the developers are e=
mployees of a small number of major corporations. In this sense, it is like=
 a "joint venture" among those companies.</p>=0A<p style=3D"margin:0;paddin=
g:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;=
</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;">To the extent that those companies gain (partia=
l) control of the Linux kernel, as appears to be the case, I think Linux mi=
srepresents itself as a "community project", and in particular, the actual =
users of the software may have little say in the direction development take=
s going forwards.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margi=
n:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wor=
d;">There's little safeguard, for example, against "senior management" bias=
es in support of certain vendors, if other vendors are excluded from effect=
ive participation by one of many techniques. In other words, there's no way=
 it can be a level playing field for innovation.</p>=0A<p style=3D"margin:0=
;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;"=
>&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size:=
 10pt; overflow-wrap: break-word;">In that sense, the Linux kernel communit=
y has reached a point very much like Microsoft Windows development reached =
in 1990 or so. I note that date because at that point, Microsoft was challe=
nged with a variety of anti-trust actions based on the fact that it used it=
s Windows monopoly status to put competitors in the application space, and =
competitors producing innovative operating systems out of business (GO Comp=
uter Corporation being one example of many).</p>=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nb=
sp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10p=
t; overflow-wrap: break-word;">This troubles me. It may not trouble the dev=
elopers who are in the Linux community and paid by the cartel of companies =
that control its direction.</p>=0A<p style=3D"margin:0;padding:0;font-famil=
y: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p styl=
e=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap:=
 break-word;">I have no complaint about the technical competence of individ=
ual developers - the quality is pretty high, at least as good as those who =
worked on Windows and macOS. But it's becoming clear that their is a narrow=
ing of control of an OS that has a lot of influence in a few hands. That th=
ose few hands don't work for one company doesn't eliminate its tendency to =
become a cartel. (one that is not transparent at all about functioning as s=
uch - preferring to give the impression that the kernel is developed by par=
t-time voluntary "contributions").</p>=0A<p style=3D"margin:0;padding:0;fon=
t-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A=
<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflo=
w-wrap: break-word;">The contrast with other open source communities is qui=
te&nbsp;sharp now. There is little eleemosynary intent that can be detected=
 any more. I think that is too bad, but things change.</p>=0A<p style=3D"ma=
rgin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-=
word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font=
-size: 10pt; overflow-wrap: break-word;">This is just the personal opinion =
of someone who has been developing systems for 50+ years now. I'm kind of d=
isappointed, but my opinion does not really matter much.</p>=0A<p style=3D"=
margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: brea=
k-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fo=
nt-size: 10pt; overflow-wrap: break-word;">David</p>=0A<p style=3D"margin:0=
;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;"=
>&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size:=
 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;paddin=
g:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;=
</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;fon=
t-family: arial; font-size: 10pt; overflow-wrap: break-word;">On Monday, Ma=
rch 29, 2021 9:52pm, "Theodore Ts'o" &lt;tytso@mit.edu&gt; said:<br /><br /=
></p>=0A<div id=3D"SafeStyles1617152361">=0A<p style=3D"margin:0;padding:0;=
font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&gt; On Mo=
n, Mar 29, 2021 at 04:28:11PM -0400, David P. Reed wrote:<br />&gt; &gt;<br=
 />&gt; &gt;<br />&gt; &gt; What tends to shape Linux and FreeBSD, etc. are=
 the money sources<br />&gt; &gt; that flow into the communities. Of course=
 Linux is quite<br />&gt; &gt; independently wealthy now. The senior execut=
ives of the Linux<br />&gt; &gt; Foundation are paid nearly a million dolla=
rs a year, each. Which<br />&gt; &gt; just indicates that major corporation=
s are seriously interested in<br />&gt; &gt; controlling the evolution of L=
inux (not the Gnu part, the part that<br />&gt; &gt; has Linus Torvalds at =
its center).<br />&gt; <br />&gt; First of all, I don't believe your salary=
 numbers are correct.<br />&gt; <br />&gt; https://nonprofitlight.com/ca/sa=
n-francisco/linux-foundation<br />&gt; <br />&gt; Secondly, the "senior exe=
cutives" of the Linux Foundation don't have<br />&gt; any control over "the=
 evolution of Linux". The exception to that are<br />&gt; the "Fellows" (e.=
g., Linus Torvalds, Greg K-H, etc.) and I can assure<br />&gt; you that the=
y don't take orders from Jim Zemlin, the executive<br />&gt; director, or a=
ny one else at the Linux Foundation.<br />&gt; <br />&gt; The senior develo=
pers of Linux do tend to work for the big<br />&gt; corporations, but cultu=
rally, we do try to keep our "corporate hats"<br />&gt; and our "community"=
 hats quite separate, and identify when we our<br />&gt; company hats on. M=
any senior developers have transitioned between<br />&gt; multiple companie=
s, and over time, it's been understood that their<br />&gt; primarily alleg=
iance is to Linux, and not to the company. In fact,<br />&gt; the primary j=
ob of maintainers is to say "no" to companies when they<br />&gt; try to pu=
sh crap code into the kernel. And that's because it's the<br />&gt; maintai=
ner's responsibility to clean up the mess if they say yes to<br />&gt; code=
 that's Just Not Ready, since they have a long-term responsbility<br />&gt;=
 towards their subsystem, unlike engineers or contractors that only<br />&g=
t; have a short-term goal to get the code upstream.<br />&gt; <br />&gt; Th=
is is where having a hierarchial ownership model IMHO works better<br />&gt=
; than a "core team" model where there can be a diffusion of<br />&gt; resp=
onsibility, where anyone with a commit bit can commit anywhere in<br />&gt;=
 the OS. In contrast, David Miller "owns" the networking area, and so<br />=
&gt; someone who might be, say, the ext4 or xfs maintainer does not have<br=
 />&gt; the right (read: Linus will reject a pull request from me if I try =
to<br />&gt; change code in the networking stack with out DaveM's signoff) =
to<br />&gt; change code outside of their subsystem.<br />&gt; <br />&gt; S=
o you're right that Linus probably doesn't know or care about<br />&gt; buf=
ferbloat. He's delegated pretty much all networking issues to<br />&gt; Dav=
id Miller as the networking czar, and within networking, David<br />&gt; Mi=
ller has his submaintainers with different specialities. This does<br />&gt=
; get complicated when there are changes which cross subsystems. For<br />&=
gt; example, before Wireguard could land in the kernel, there were changes<=
br />&gt; needed in both the crypto and networking layers, and Jason had to=
<br />&gt; negotiate with multiple senior developers in those subsystems, a=
nd the<br />&gt; code was subject to quite a lot of review before it could =
land. (It<br />&gt; took months, and we didn't try to rush things before a =
major<br />&gt; release....)<br />&gt; <br />&gt; &gt; I just spent 9 month=
s trying to get a very tiny fix to the Linux<br />&gt; &gt; kernel into the=
 mainline kernel. I actually gave up, because it<br />&gt; &gt; seemed utte=
rly pointless, even though it was clearly a design error<br />&gt; &gt; tha=
t I was fixing, and I was trying to meet all the constraints on<br />&gt; &=
gt; patches. No one was fighting me, no one said it was wrong.<br />&gt; <b=
r />&gt; It sounds like the real problem is no one was paying attention to =
you.<br />&gt; There is a *huge* number of changes going into the Linux ker=
nel, and<br />&gt; so the the challenge is getting review bandwidth by the =
relevant<br />&gt; maintainers. Blindly posting to the linux-kernel mailing=
 list will<br />&gt; generally not get you very far.<br />&gt; <br />&gt; T=
he Linux development process is not really optimized for "drive by<br />&gt=
; patching". Knowng where (and to whom) a patch needs to be reviewed is<br =
/>&gt; not necessarily easy for a novice, and while there are tools such as=
<br />&gt; ./scripts/get_maintainer.pl that try to make it a bit easier, I =
can<br />&gt; see how someone who Just Wants To Get A Single Patch accepted=
, can see<br />&gt; it as "bureaucracy".<br />&gt; <br />&gt; Cheers,<br />=
&gt; <br />&gt; - Ted<br />&gt; </p>=0A</div></font>
------=_20210330212350000000_87018--


--===============0557209898529362911==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0557209898529362911==--

