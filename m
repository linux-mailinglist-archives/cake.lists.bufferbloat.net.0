Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5F36051EC
	for <lists+cake@lfdr.de>; Wed, 19 Oct 2022 23:26:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2E43F3CB47;
	Wed, 19 Oct 2022 17:26:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666214794;
	bh=/T1thBAl6vDC69sl+k5ZShw990PlLbHFzlBYkmYxQRs=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=W4fSuvRpJAQ5wP9vrh0yBBmUaTBbQ+HFlqicPqc2Z4DzcFs0omSwmkldBBTlv8qgi
	 eh6TnXRjnLE2y3gyeXm/1FH7rRutoCRoQDqXX3h2JTSbIrEyoaZfe/Td1PyMZ/swK2
	 ePqw0qF2mLb2qtZEr9GkZAaqWmqQSsFmztt46RWjaEXpGq2uUbjkJzW5EQOYzL8qis
	 mbh/4i71MEAdDWp9aFCwkmIx1b2ivPRbLpts1QEdV/hiovJGqSvRxhOYjD9VxyoSun
	 GxVwn56fnPNzwN08TWGwrGUclB3ITbC1OrZu3Neqpm+yEfr8nvTh2VNufiPGJDOtfB
	 n1PtXpRmnhfxA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp86.iad3a.emailsrvr.com (smtp86.iad3a.emailsrvr.com
 [173.203.187.86])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 92E7F3B29D;
 Wed, 19 Oct 2022 17:26:32 -0400 (EDT)
Received: from app40.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp27.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id DDA4B210F2;
 Wed, 19 Oct 2022 17:26:31 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app40.wa-webapps.iad3a (Postfix) with ESMTP id C7DBB6107B;
 Wed, 19 Oct 2022 17:26:31 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Wed, 19 Oct 2022 17:26:31 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Wed, 19 Oct 2022 17:26:31 -0400 (EDT)
To: "David Lang" <david@lang.hm>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <qss576pn-2r55-84s9-s5ro-750570702685@ynat.uz>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com> 
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com> 
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com> 
 <6710sq51-1151-s739-qq87-0r5264qrs9q8@ynat.uz> 
 <CAHb6LvoUr9cqzKQo0K-9BUJLepiWSHvWuEna3sOfF1oXk-yquw@mail.gmail.com> 
 <BBA547E7-7061-451D-8EA1-22C282E11234@gmx.de> 
 <6697ss38-s3nr-99n3-8q5o-p24q6q7923np@ynat.uz> 
 <CAHb6LvrXkayhCb1GjZMgaw155dZr0Orj_Q-SGhgo1P6bSA-M-Q@mail.gmail.com> 
 <qss576pn-2r55-84s9-s5ro-750570702685@ynat.uz>
X-Client-IP: 209.6.168.128
Message-ID: <1666214791.81584918@apps.rackspace.com>
X-Mailer: webmail/19.0.22-RC
X-Classification-ID: 00d56ed1-1670-48f4-a471-59a1907587ec-1-1
Subject: Re: [Cake] [Rpm] [Make-wifi-fast] [Bloat] The most wonderful video
	ever about bufferbloat
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
From: "David P. Reed via Cake" <cake@lists.bufferbloat.net>
Reply-To: "David P. Reed" <dpreed@deepplum.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>,
 Bob McMahon via Rpm <rpm@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============0279810620777824772=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0279810620777824772==
Content-Type: multipart/alternative;boundary="----=_20221019172631000000_33111"

------=_20221019172631000000_33111
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0A4 microseconds!=0A =0AOn Wednesday, October 19, 2022 3:23pm, "David Lang=
 via Cake" <cake@lists.bufferbloat.net> said:=0A=0A=0A=0A> you have to list=
en and hear nothing for some timeframe before you transmit, that=0A> listen=
ing time is define in the standard. (isn't it??)=0A> =0A> David Lang=0A> =
=0A> On Wed, 19 Oct 2022, Bob McMahon wrote:=0A> =0A> > I'm not sure where =
the gap in milliseconds is coming from. EDCA gaps are=0A> > mostly driven b=
y probabilities=0A> > <https://link.springer.com/article/10.1007/s10270-020=
-00817-2>. If=0A> > energy detect (ED) indicates the medium is available th=
en the gap prior to=0A> > transmit, assuming no others competing & winning =
at that moment in time, is=0A> > driven by AIFS and the CWMIN - CWMAX back =
offs which are simple probability=0A> > distributions. Things change a bit =
with 802.11ax and trigger frames but the=0A> > gap is still determined by t=
he backoff and should be less than milliseconds=0A> > per that. Things like=
 NAVs will impact the gap too but that happens when=0A> > another is transm=
itting.=0A> >=0A> >=0A> > [image: image.png]=0A> >=0A> > Agreed that the PL=
CP preamble is at low MCS and the payload can be orders=0A> > of magnitude =
greater (per different QAM encodings and other signal=0A> > processing tech=
niques.)=0A> >=0A> > Bob=0A> >=0A> > On Wed, Oct 19, 2022 at 12:09 AM David=
 Lang <david@lang.hm> wrote:=0A> >=0A> >> On Tue, 18 Oct 2022, Sebastian Mo=
eller wrote:=0A> >>> Hi Bob,=0A> >>>=0A> >>>> Many network engineers typica=
lly, though incorrectly, perceive a=0A> >> transmit=0A> >>>> unit as one et=
hernet packet. With WiFi it's one Mu transmission=0A> or one=0A> >> Su=0A> =
>>>> transmission, with aggregation(s), which is a lot more than one=0A> et=
hernet=0A> >>>> packet but it depends on things like MCS, spatial stream po=
wers,=0A> Mu=0A> >> peers,=0A> >>>> etc. and is variable. Some data center =
designs have optimized the=0A> >>>> forwarding plane for flow completion ti=
mes so their equivalent=0A> transmit=0A> >>>> unit is a mouse flow.=0A> >>>=
=0A> >>> [SM] Is this driven more by the need to aggregate packets to amort=
ize=0A> >> some cost over a larger payload or to reduce the scheduling over=
head or=0A> to=0A> >> regularize things (as in fixed size DTUs used in DSL =
with G.INP=0A> >> retransmissions)?=0A> >>=0A> >> it's to amortize costs ov=
er a larger payload.=0A> >>=0A> >> the gap between transmissions is in ms, =
and the transmission header is=0A> >> transmitted at a slow data rate (both=
 for backwards compatibility with=0A> >> older=0A> >> equipment that doesn'=
t know about the higher data rate modulations)=0A> >>=0A> >> For a long tim=
e, the transmission header was transmitted at 1Mb (which is=0A> >> still=0A=
> >> the default in most equipment), but there is now an option to no longe=
r=0A> >> support=0A> >> 802.11b equipment, which raises the header transmis=
sion time to 11Mb.=0A> >>=0A> >> These factors are so imbalanced compared t=
o the top data rates available=0A> >> that=0A> >> you need to transmit seve=
ral MB of data to have actual data use 50% of=0A> the=0A> >> airtime.=0A> >=
>=0A> >> David Lang=0A> >>=0A> >=0A> >=0A> ________________________________=
_______________=0A> Cake mailing list=0A> Cake@lists.bufferbloat.net=0A> ht=
tps://lists.bufferbloat.net/listinfo/cake=0A> 
------=_20221019172631000000_33111
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">4 microseconds!</p>=0A=
<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflo=
w-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-famil=
y: arial; font-size: 10pt; overflow-wrap: break-word;">On Wednesday, Octobe=
r 19, 2022 3:23pm, "David Lang via Cake" &lt;cake@lists.bufferbloat.net&gt;=
 said:<br /><br /></p>=0A<div id=3D"SafeStyles1666214779">=0A<p style=3D"ma=
rgin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-=
word;">&gt; you have to listen and hear nothing for some timeframe before y=
ou transmit, that<br />&gt; listening time is define in the standard. (isn'=
t it??)<br />&gt; <br />&gt; David Lang<br />&gt; <br />&gt; On Wed, 19 Oct=
 2022, Bob McMahon wrote:<br />&gt; <br />&gt; &gt; I'm not sure where the =
gap in milliseconds is coming from. EDCA gaps are<br />&gt; &gt; mostly dri=
ven by probabilities<br />&gt; &gt; &lt;https://link.springer.com/article/1=
0.1007/s10270-020-00817-2&gt;. If<br />&gt; &gt; energy detect (ED) indicat=
es the medium is available then the gap prior to<br />&gt; &gt; transmit, a=
ssuming no others competing &amp; winning at that moment in time, is<br />&=
gt; &gt; driven by AIFS and the CWMIN - CWMAX back offs which are simple pr=
obability<br />&gt; &gt; distributions. Things change a bit with 802.11ax a=
nd trigger frames but the<br />&gt; &gt; gap is still determined by the bac=
koff and should be less than milliseconds<br />&gt; &gt; per that. Things l=
ike NAVs will impact the gap too but that happens when<br />&gt; &gt; anoth=
er is transmitting.<br />&gt; &gt;<br />&gt; &gt;<br />&gt; &gt; [image: im=
age.png]<br />&gt; &gt;<br />&gt; &gt; Agreed that the PLCP preamble is at =
low MCS and the payload can be orders<br />&gt; &gt; of magnitude greater (=
per different QAM encodings and other signal<br />&gt; &gt; processing tech=
niques.)<br />&gt; &gt;<br />&gt; &gt; Bob<br />&gt; &gt;<br />&gt; &gt; On=
 Wed, Oct 19, 2022 at 12:09 AM David Lang &lt;david@lang.hm&gt; wrote:<br /=
>&gt; &gt;<br />&gt; &gt;&gt; On Tue, 18 Oct 2022, Sebastian Moeller wrote:=
<br />&gt; &gt;&gt;&gt; Hi Bob,<br />&gt; &gt;&gt;&gt;<br />&gt; &gt;&gt;&g=
t;&gt; Many network engineers typically, though incorrectly, perceive a<br =
/>&gt; &gt;&gt; transmit<br />&gt; &gt;&gt;&gt;&gt; unit as one ethernet pa=
cket. With WiFi it's one Mu transmission<br />&gt; or one<br />&gt; &gt;&gt=
; Su<br />&gt; &gt;&gt;&gt;&gt; transmission, with aggregation(s), which is=
 a lot more than one<br />&gt; ethernet<br />&gt; &gt;&gt;&gt;&gt; packet b=
ut it depends on things like MCS, spatial stream powers,<br />&gt; Mu<br />=
&gt; &gt;&gt; peers,<br />&gt; &gt;&gt;&gt;&gt; etc. and is variable. Some =
data center designs have optimized the<br />&gt; &gt;&gt;&gt;&gt; forwardin=
g plane for flow completion times so their equivalent<br />&gt; transmit<br=
 />&gt; &gt;&gt;&gt;&gt; unit is a mouse flow.<br />&gt; &gt;&gt;&gt;<br />=
&gt; &gt;&gt;&gt; [SM] Is this driven more by the need to aggregate packets=
 to amortize<br />&gt; &gt;&gt; some cost over a larger payload or to reduc=
e the scheduling overhead or<br />&gt; to<br />&gt; &gt;&gt; regularize thi=
ngs (as in fixed size DTUs used in DSL with G.INP<br />&gt; &gt;&gt; retran=
smissions)?<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; it's to amortize costs ov=
er a larger payload.<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; the gap between =
transmissions is in ms, and the transmission header is<br />&gt; &gt;&gt; t=
ransmitted at a slow data rate (both for backwards compatibility with<br />=
&gt; &gt;&gt; older<br />&gt; &gt;&gt; equipment that doesn't know about th=
e higher data rate modulations)<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; For a=
 long time, the transmission header was transmitted at 1Mb (which is<br />&=
gt; &gt;&gt; still<br />&gt; &gt;&gt; the default in most equipment), but t=
here is now an option to no longer<br />&gt; &gt;&gt; support<br />&gt; &gt=
;&gt; 802.11b equipment, which raises the header transmission time to 11Mb.=
<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; These factors are so imbalanced comp=
ared to the top data rates available<br />&gt; &gt;&gt; that<br />&gt; &gt;=
&gt; you need to transmit several MB of data to have actual data use 50% of=
<br />&gt; the<br />&gt; &gt;&gt; airtime.<br />&gt; &gt;&gt;<br />&gt; &gt=
;&gt; David Lang<br />&gt; &gt;&gt;<br />&gt; &gt;<br />&gt; &gt;<br />&gt;=
 _______________________________________________<br />&gt; Cake mailing lis=
t<br />&gt; Cake@lists.bufferbloat.net<br />&gt; https://lists.bufferbloat.=
net/listinfo/cake<br />&gt; </p>=0A</div></font>
------=_20221019172631000000_33111--


--===============0279810620777824772==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0279810620777824772==--

