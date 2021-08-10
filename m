Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD753E863C
	for <lists+cake@lfdr.de>; Wed, 11 Aug 2021 00:54:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0169C3CB56;
	Tue, 10 Aug 2021 18:54:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628636067;
	bh=5c4+GlbGLW9CVCm7/piBfAF4w3PyWbS/bpeMOQTfJTY=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=cE2Ct/At/zoisWLxvE0TLkL47/3Ro/7CCb8mUySrWjIaUDL6JB71ziXCvP7WzpYzr
	 4NRqqiro1yO48zJ+jY3nKJcJKbFCAppKFBwBu8P1CjdsQI79JRhs3FVAMA5ndfhRuT
	 n3sUQxU8Z5spwl80CEQCBX8NqhncgZMiCZApO49FHQAHBFmFCE79wAfzDu3dMbNCy0
	 dvvcOoQMQxK8GVr4uhw7IKPUc/rhPcatH9xC96suL+Lvyv2PtDtyzpq5vQ9weAf8/Z
	 nCmtG7z+q1SeYkXpatUZFMWOfx4U8SqONGZKFXumz9Xr1hqswSy1lEU+7K+Lv3j9nh
	 19CAIpFXi0nxw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 091C73CB42
 for <cake@lists.bufferbloat.net>; Tue, 10 Aug 2021 18:54:24 -0400 (EDT)
Received: by mail-ej1-x636.google.com with SMTP id hs10so386650ejc.0
 for <cake@lists.bufferbloat.net>; Tue, 10 Aug 2021 15:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T7SvIgqzA6fWuooG0p1Egm5Pheoc4zMNB+Q3jUMxQU0=;
 b=Z5nDgWGMMOZdaaKBpLL08F6gSWLlhjrNbMceLR7b86FnNUpiufvubpuTH36QPHCptS
 KTXTN+pJ7RMySMhlx6C45THP/XaBbEMJxiHM2ea4VnYsVIsEPo7TVSy4oGFeBM6Bwo8C
 OiT5wKPTl5Hji3jfEaLOCvFUjXfy1+eqoI9Ac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T7SvIgqzA6fWuooG0p1Egm5Pheoc4zMNB+Q3jUMxQU0=;
 b=bNgR4n2AbROOY7khXyOCawwnqMb1LR9ToY47x/yxRGf3rPuIt9GbNaTKzbfRiuoQn6
 VRHEgKuSvAn3aXIgMxLwnJeEQ12oHdLjggRCZSB3Q4XyWL3s6cYW/5xY81dzDWHR5pwd
 XS1s2A3LmliN5Wx4rnbOXlRjdqK+JoeOvBd1jBIJBtd2U7SsLiumXnkCmz22PUTV1GFm
 JrCfP/prOFNMH8koBmA4xfpGAKzbHp+bjV6CJu2o8/teI1QQ8sJgEDIeoKjZdzJY/gy9
 DlarQRpGzVBQ0qiQV2GQenUtmDkF7JNxBvyqURQ9mjfFIpSzEOTPHCggWEx5yj/J4VEv
 pSZg==
X-Gm-Message-State: AOAM531XBC5ZfZy5nIQiA83mrO7H0/DXCXUmyaFzC3TSF81IV/dLoEu9
 vfwq3pcaaZYJlTrnun445dFS2WQilYzaiKEHTYto15yOE0RaynJqPdklqSZfAHnPlVzpwBK5Y1r
 zO2Qfe9JxqNzmaw53Wrs76mIzgmzgLy5oFFE9
X-Google-Smtp-Source: ABdhPJz4IBUEVrMIaA8t10NbOckbL+eXtD5DBgxW8oH1CJblDS6y71OQnawO3TJbeu/OIVHLTBALXHkfb1kM4wNgETc=
X-Received: by 2002:a17:907:7848:: with SMTP id
 lb8mr767501ejc.494.1628636063589; 
 Tue, 10 Aug 2021 15:54:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
 <202108101410.17AEAR4w075939@gndrsh.dnsmgr.net>
 <5AF5551E2A7041168E7071FDA0F6B8EC@SRA6>
 <CAHb6LvpAmUKgsMAoZGrbAvS01DF=yWyJj56ox+FrDM_tEc=0Ng@mail.gmail.com>
 <03CA2CDA3EC5415DA229F835BE039994@SRA6>
 <CAHb6LvoiVZq91m-C3iJFC95fYLPHCY3zQo6O0XTUDAJquu5KbQ@mail.gmail.com>
 <92A399A23FEE4C52ADFC1734E6840756@SRA6>
 <CACw=56K_Sj24FAO17cY4vDYhe1-gAXW_fQKLSBKSMqSE0kCRmA@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108101343040.810590@qynat-yncgbc>
In-Reply-To: <nycvar.QRO.7.76.6.2108101343040.810590@qynat-yncgbc>
Date: Tue, 10 Aug 2021 15:54:12 -0700
Message-ID: <CAHb6LvohFGVwM2MhPcsrXJ137+skCSvDobL2Zh8MC=TO8p79Pw@mail.gmail.com>
To: David Lang <david@lang.hm>
Subject: Re: [Cake] [Starlink] Anhyone have a spare couple a hundred million
 ... Elon may need to start a go-fund-me page!
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
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, dickroy@alum.mit.edu,
 Jeremy Austin <jeremy@aterlo.com>
Content-Type: multipart/mixed; boundary="===============8057035174322917194=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8057035174322917194==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000012073405c93c62ce"

--00000000000012073405c93c62ce
Content-Type: multipart/alternative; boundary="0000000000000a400e05c93c62f5"

--0000000000000a400e05c93c62f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<diatribe on> sorry about that

The below was written two decades ago and we're still fiddling around with
fraudband. Hey, today in 2021, comcast will sell a select few 2 Gb/s
symmetric over a fiber strand using a juniper switch, leased of course,
designed in 2011. Talk about not keeping up with modern mfg of ASICs, and
associated energy efficiencies. In the meantime we continue on destroying
the planet and Musk wants our offspring to live on Mars, while Bezos thinks
he's creating a new industry in space tourism. To the writeup about why we
need to rethink broadband. Eli Noam is also quite prescient written in 1994
(http://www.columbia.edu/dlc/wp/citi/citinoam11.html )

Rather than realistic, I think you are instead being 'reasonable.' There is
a big difference. I am reminded of a quote:

"A reasonable man adapts himself to suit his environment. An unreasonable
man persists in attempting to adapt his environment to suit himself.
Therefore, all progress depends on the unreasonable man."
--George Bernard Shaw

Most CEO's, excluding start-ups, fall into the reasonable man camp (though
they were unreasonable once). Make the most of your current surroundings
while expending the minimal effort. It's good business sense for short term
results, but ignores the long term. It dictates a forward strategy of
incrementalism. It ignores the cumulative costs of the incremental
improvements and the diminishing returns of each successive increment.
Therefore each new increment has to be spaced farther out in time, which is
not desirable from a long-term business point of view. That business case
deteriorates longer term, but is easier to see shorter term. Short-term
thinking, driven by Wall Street, seems to be the only mode corporate
America can operate in.

This incrementalism mentality with 18 month upgrade cycles is fine for
consumer gadgets where the consumer knows they will have an accounting loss
on the gadget from the day they buy it. The purchaser of the gadget never
expects to make money on it. That's why they are called "consumers." That's
one of the only environments where 18 month upgrade cycles can persist.

Network infrastructure deployment is an entirely different food chain.
Under the current models, the purchaser of equipment (e.g. a service
provider) is not a consumer. It is a business that has to make a net profit
off selling services enabled by the equipment. This defies 18 month upgrade
cycles of "consumer" goods. A couple thousand bucks per subscriber takes a
long time for a network operator to recover, when you rely on a couple
percent of that, in NET income not revenue, per month. It is not conducive
to Wall Street driven companies. Thus, the next step has to be a 10-year
step.

Yet, consumers spend thousands every couple years on consumables they will
lose money on (essentially a 100% loss). Many even finance these purchases
at the ridiculous rates of credit cards, adding further to their accounting
loss. The value of these goods and services to the consumer is
justified/rationalized in non-accounting-based ways. In that light,
customer-owned networks are not such a stretch. In fact they would be an
asset that can be written off for tax purposes. The main difference is it
isn't in your physical possession, in your home, so you can't show people
your new gadget. Not directly anyway.

The "realistic" view of network infrastructure deployment (as opposed to
the reasonable view) is that today's access network infrastructure is the
wrong platform to grow from, and the wrong business model to operate under.
It can't grow like a consumer product (CD players, DVD players, PC's, etc)
because it is not a consumer product and the consumer does not have the
freedom of choice in content and applications providers (which was an
important part of the growth of those consumer markets).

Piling new money into the old infrastructure and its operating model
failure is not a realistic approach, because of diminishing returns. It was
never intended to provide real broadband connectivity, to each user, and
the operating costs are way too high. Besides, real broadband undermines
the legacy businesses of the monopoly owners.

A 100x increase in the base platform is needed in order to have a platform
that accommodates future growth in services and applications. That way it
doesn't require yet another infrastructure incremental upgrade each step of
the way. This connectivity platform also must be decoupled from the content
and services.

Access network growth cannot progress in small increments or on 18 month
upgrade cycles. It can't be small increments because these increments
enable nothing new and add little if any tangible value. They simply make
the present-day excuses for applications less annoying to use. This
approach will never make it through the next increment, and is arguably the
chasm where we sit today. It can't be 18 month cycles because the
equipment's accounting life is much longer than that. It will be neither
paid off nor written off after 18 months.

The equipment for 100Mbps FTTH is very nearly the same cost as the
equipment used for 256kbps DSL service. It is cheaper than that DSL
equipment was 2 years ago, but they are both moving targets. What costs too
much money is the deployment labor in the US (but not in many Asian
countries), the permits, the right-of-way, and the hassles thereof. Those
aren't getting cheaper with time. Within the next year or two, it will cost
more to wait than to deploy now. The equipment cost decreases will be less
than the construction cost increases per year. The business case gets
harder by waiting. Yes, it requires taking risk that boils down to
believing the "build it and they will come" mantra.

Contrary to popular belief, it is not a chicken-or-egg problem. The
connectivity has to be there first, before the application development
resources will be allocated. Imagine a start-up trying to get funding for
an application that requires 100Mbps peak network connections. They'd be
laughed out of the VC's office. Same holds for trying to get resources to
develop the same application within a company's R&D budget. No support for
its development because there's no platform or marketplace to sell it into.
There are plenty of startups working on FTTH equipment and infrastructure
products though.

Would any of today's PC applications have had a snowball's chance in hell
of getting funding if they were pitched back in the days when the PC
platform was based on CPU speeds in the tens of MHz, 2Meg of RAM, a 50Meg
hard drive, and a 16 bit ISA bus? No. Few saw any reason we'd ever need
more than that. After the next 10x improvement, people said the same thing:
Why do we need more? Only after about 100x improvement did people finally
stop saying that, though I've noticed it has returned of-late. The cost
declines were a vital part of this too, along with the performance
increases.

The lack of profitability in today's consumer data services, and the low
subscription percentages even thought there is fairly wide availability
does not mean that the "build it and they will come" mantra has failed for
broadband. There is no broadband, so the mantra has not even been tested
yet. Build it, and operate it under an open access model, with content and
connectivity as separate entities, and they will come. Without that second
condition, I have serious doubts about the possibility for successful
PC-like growth in broadband, even if it is built.

On Tue, Aug 10, 2021 at 1:44 PM David Lang <david@lang.hm> wrote:

> the biggest problem starlink faces is shipping enough devices (and
> launching the
> satellites to support them), not demand. There are enough people
> interested in
> paying full price that if the broadband subsities did not exist, it
> wouldn't
> reduce the demand noticably.
>
> but if the feds are handing out money, SpaceX is foolish not to apply for
> it.
>
> David Lang
>
> On Tue, 10 Aug 2021, Jeremy Austin wrote:
>
> > Date: Tue, 10 Aug 2021 12:33:11 -0800
> > From: Jeremy Austin <jeremy@aterlo.com>
> > To: dickroy@alum.mit.edu
> > Cc: Cake List <cake@lists.bufferbloat.net>,
> >     Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
> >     Bob McMahon <bob.mcmahon@broadcom.com>,
> starlink@lists.bufferbloat.net,
> >     codel <codel@lists.bufferbloat.net>,
> >     cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
> >     bloat <bloat@lists.bufferbloat.net>
> > Subject: Re: [Starlink] Anhyone have a spare couple a hundred million
> ... Elon
> >      may need to start a go-fund-me page!
> >
> > A 5.7% reduction in funded locations for StarLink is=E2=80=A6 not drama=
tic. If
> the
> > project falls on that basis, they've got bigger problems. Much of that
> > discrepancy falls squarely on the shoulders of the FCC and incumbent IS=
Ps
> > filing form 477, as well as the RDOF auction being held before improvin=
g
> > mapping =E2=80=94 as Rosenworcel pointed out. The state of broadband ma=
pping is
> > still dire.
> >
> > If I felt like the reallocation of funds would be 100% guaranteed to
> > benefit the end Internet user=E2=80=A6 I'd cheer too.
> >
> > If.
> >
> > JHA
> >
> > On Tue, Aug 10, 2021 at 12:16 PM Dick Roy <dickroy@alum.mit.edu> wrote:
> >
> >> You may find this of some relevance!
> >>
> >>
> >>
> >>
> >>
> https://arstechnica.com/tech-policy/2021/07/ajit-pai-apparently-mismanage=
d-9-billion-fund-new-fcc-boss-starts-cleanup/
> >>
> >>
> >>
> >> Cheers (or whatever!),
> >>
> >>
> >>
> >> RR
> >>
> >>
> >> _______________________________________________
> >> Starlink mailing list
> >> Starlink@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/starlink
> >>
> >
> >
> >_______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>

--=20
This electronic communication and the information and any files transmitted=
=20
with it, or attached to it, are confidential and are intended solely for=20
the use of the individual or entity to whom it is addressed and may contain=
=20
information that is confidential, legally privileged, protected by privacy=
=20
laws, or otherwise restricted from disclosure to anyone else. If you are=20
not the intended recipient or the person responsible for delivering the=20
e-mail to the intended recipient, you are hereby notified that any use,=20
copying, distributing, dissemination, forwarding, printing, or copying of=
=20
this e-mail is strictly prohibited. If you received this e-mail in error,=
=20
please return the e-mail to the sender, delete it from your computer, and=
=20
destroy any printed copy of it.

--0000000000000a400e05c93c62f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(44,54,58);font-family:monospace;f=
ont-size:14px">&lt;diatribe on&gt; sorry about that<br><br>The below was wr=
itten two decades ago and we&#39;re still fiddling around with fraudband. H=
ey, today in 2021, comcast will sell a select few 2 Gb/s symmetric over a f=
iber strand using a juniper switch, leased of course, designed in 2011. Tal=
k about not keeping up with modern mfg of ASICs, and associated energy effi=
ciencies. In the meantime=C2=A0we continue=C2=A0on destroying the planet an=
d Musk wants our offspring to live on Mars, while Bezos thinks he&#39;s cre=
ating a new industry in space tourism. To the writeup about why we need to =
rethink broadband. Eli Noam is also quite prescient written in 1994 (</span=
><a href=3D"http://www.columbia.edu/dlc/wp/citi/citinoam11.html">http://www=
.columbia.edu/dlc/wp/citi/citinoam11.html</a> )<span style=3D"color:rgb(44,=
54,58);font-family:monospace;font-size:14px"><br><br>Rather than realistic,=
 I think you are instead being &#39;reasonable.&#39; There is a big differe=
nce. I am reminded of a quote:</span><br style=3D"box-sizing:border-box;col=
or:rgb(44,54,58);font-family:monospace;font-size:14px"><br style=3D"box-siz=
ing:border-box;color:rgb(44,54,58);font-family:monospace;font-size:14px"><s=
pan style=3D"color:rgb(44,54,58);font-family:monospace;font-size:14px">&quo=
t;A reasonable man adapts himself to suit his environment. An unreasonable =
man persists in attempting to adapt his environment to suit himself. Theref=
ore, all progress depends on the unreasonable man.&quot;</span><br style=3D=
"box-sizing:border-box;color:rgb(44,54,58);font-family:monospace;font-size:=
14px"><span style=3D"box-sizing:border-box;color:rgb(44,54,58);font-family:=
monospace;font-size:14px;white-space:nowrap">--George=C2=A0Bernard=C2=A0Sha=
w</span><br style=3D"box-sizing:border-box;color:rgb(44,54,58);font-family:=
monospace;font-size:14px"><br style=3D"box-sizing:border-box;color:rgb(44,5=
4,58);font-family:monospace;font-size:14px"><span style=3D"color:rgb(44,54,=
58);font-family:monospace;font-size:14px">Most CEO&#39;s, excluding start-u=
ps, fall into the reasonable man camp (though they were unreasonable once).=
 Make the most of your current surroundings while expending the minimal eff=
ort. It&#39;s good business sense for short term results, but ignores the l=
ong term. It dictates a forward strategy of incrementalism. It ignores the =
cumulative costs of the incremental improvements and the diminishing return=
s of each successive increment. Therefore each new increment has to be spac=
ed farther out in time, which is not desirable from a long-term business po=
int of view. That business case deteriorates longer term, but is easier to =
see shorter term. Short-term thinking, driven by Wall Street, seems to be t=
he only mode corporate America can operate in.</span><br style=3D"box-sizin=
g:border-box;color:rgb(44,54,58);font-family:monospace;font-size:14px"><br =
style=3D"box-sizing:border-box;color:rgb(44,54,58);font-family:monospace;fo=
nt-size:14px"><span style=3D"color:rgb(44,54,58);font-family:monospace;font=
-size:14px">This incrementalism mentality with 18 month upgrade cycles is f=
ine for consumer gadgets where the consumer knows they will have an account=
ing loss on the gadget from the day they buy it. The purchaser of the gadge=
t never expects to make money on it. That&#39;s why they are called &quot;c=
onsumers.&quot; That&#39;s one of the only environments where 18 month upgr=
ade cycles can persist.</span><br style=3D"box-sizing:border-box;color:rgb(=
44,54,58);font-family:monospace;font-size:14px"><br style=3D"box-sizing:bor=
der-box;color:rgb(44,54,58);font-family:monospace;font-size:14px"><span sty=
le=3D"color:rgb(44,54,58);font-family:monospace;font-size:14px">Network inf=
rastructure deployment is an entirely different food chain. Under the curre=
nt models, the purchaser of equipment (e.g. a service provider) is not a co=
nsumer. It is a business that has to make a net profit off selling services=
 enabled by the equipment. This defies 18 month upgrade cycles of &quot;con=
sumer&quot; goods. A couple thousand bucks per subscriber takes a long time=
 for a network operator to recover, when you rely on a couple percent of th=
at, in NET income not revenue, per month. It is not conducive to Wall Stree=
t driven companies. Thus, the next step has to be a 10-year step.</span><br=
 style=3D"box-sizing:border-box;color:rgb(44,54,58);font-family:monospace;f=
ont-size:14px"><br style=3D"box-sizing:border-box;color:rgb(44,54,58);font-=
family:monospace;font-size:14px"><span style=3D"color:rgb(44,54,58);font-fa=
mily:monospace;font-size:14px">Yet, consumers spend thousands every couple =
years on consumables they will lose money on (essentially a 100% loss). Man=
y even finance these purchases at the ridiculous rates of credit cards, add=
ing further to their accounting loss. The value of these goods and services=
 to the consumer is justified/rationalized in non-accounting-based ways. In=
 that light, customer-owned networks are not such a stretch. In fact they w=
ould be an asset that can be written off for tax purposes. The main differe=
nce is it isn&#39;t in your physical possession, in your home, so you can&#=
39;t show people your new gadget. Not directly anyway.</span><br style=3D"b=
ox-sizing:border-box;color:rgb(44,54,58);font-family:monospace;font-size:14=
px"><br style=3D"box-sizing:border-box;color:rgb(44,54,58);font-family:mono=
space;font-size:14px"><span style=3D"color:rgb(44,54,58);font-family:monosp=
ace;font-size:14px">The &quot;realistic&quot; view of network infrastructur=
e deployment (as opposed to the reasonable view) is that today&#39;s access=
 network infrastructure is the wrong platform to grow from, and the wrong b=
usiness model to operate under. It can&#39;t grow like a consumer product (=
CD players, DVD players, PC&#39;s, etc) because it is not a consumer produc=
t and the consumer does not have the freedom of choice in content and appli=
cations providers (which was an important part of the growth of those consu=
mer markets).</span><br style=3D"box-sizing:border-box;color:rgb(44,54,58);=
font-family:monospace;font-size:14px"><br style=3D"box-sizing:border-box;co=
lor:rgb(44,54,58);font-family:monospace;font-size:14px"><span style=3D"colo=
r:rgb(44,54,58);font-family:monospace;font-size:14px">Piling new money into=
 the old infrastructure and its operating model failure is not a realistic =
approach, because of diminishing returns. It was never intended to provide =
real broadband connectivity, to each user, and the operating costs are way =
too high. Besides, real broadband undermines the legacy businesses of the m=
onopoly owners.</span><br style=3D"box-sizing:border-box;color:rgb(44,54,58=
);font-family:monospace;font-size:14px"><br style=3D"box-sizing:border-box;=
color:rgb(44,54,58);font-family:monospace;font-size:14px"><span style=3D"co=
lor:rgb(44,54,58);font-family:monospace;font-size:14px">A 100x increase in =
the base platform is needed in order to have a platform that accommodates f=
uture growth in services and applications. That way it doesn&#39;t require =
yet another infrastructure incremental upgrade each step of the way. This c=
onnectivity platform also must be decoupled from the content and services.<=
/span><br style=3D"box-sizing:border-box;color:rgb(44,54,58);font-family:mo=
nospace;font-size:14px"><br style=3D"box-sizing:border-box;color:rgb(44,54,=
58);font-family:monospace;font-size:14px"><span style=3D"color:rgb(44,54,58=
);font-family:monospace;font-size:14px">Access network growth cannot progre=
ss in small increments or on 18 month upgrade cycles. It can&#39;t be small=
 increments because these increments enable nothing new and add little if a=
ny tangible value. They simply make the present-day excuses for application=
s less annoying to use. This approach will never make it through the next i=
ncrement, and is arguably the chasm where we sit today. It can&#39;t be 18 =
month cycles because the equipment&#39;s accounting life is much longer tha=
n that. It will be neither paid off nor written off after 18 months.</span>=
<br style=3D"box-sizing:border-box;color:rgb(44,54,58);font-family:monospac=
e;font-size:14px"><br style=3D"box-sizing:border-box;color:rgb(44,54,58);fo=
nt-family:monospace;font-size:14px"><span style=3D"color:rgb(44,54,58);font=
-family:monospace;font-size:14px">The equipment for 100Mbps FTTH is very ne=
arly the same cost as the equipment used for 256kbps DSL service. It is che=
aper than that DSL equipment was 2 years ago, but they are both moving targ=
ets. What costs too much money is the deployment labor in the US (but not i=
n many Asian countries), the permits, the right-of-way, and the hassles the=
reof. Those aren&#39;t getting cheaper with time. Within the next year or t=
wo, it will cost more to wait than to deploy now. The equipment cost decrea=
ses will be less than the construction cost increases per year. The busines=
s case gets harder by waiting. Yes, it requires taking risk that boils down=
 to believing the &quot;build it and they will come&quot; mantra.</span><br=
 style=3D"box-sizing:border-box;color:rgb(44,54,58);font-family:monospace;f=
ont-size:14px"><br style=3D"box-sizing:border-box;color:rgb(44,54,58);font-=
family:monospace;font-size:14px"><span style=3D"color:rgb(44,54,58);font-fa=
mily:monospace;font-size:14px">Contrary to popular belief, it is not a chic=
ken-or-egg problem. The connectivity has to be there first, before the appl=
ication development resources will be allocated. Imagine a start-up trying =
to get funding for an application that requires 100Mbps peak network connec=
tions. They&#39;d be laughed out of the VC&#39;s office. Same holds for try=
ing to get resources to develop the same application within a company&#39;s=
 R&amp;D budget. No support for its development because there&#39;s no plat=
form or marketplace to sell it into. There are plenty of startups working o=
n FTTH equipment and infrastructure products though.</span><br style=3D"box=
-sizing:border-box;color:rgb(44,54,58);font-family:monospace;font-size:14px=
"><br style=3D"box-sizing:border-box;color:rgb(44,54,58);font-family:monosp=
ace;font-size:14px"><span style=3D"color:rgb(44,54,58);font-family:monospac=
e;font-size:14px">Would any of today&#39;s PC applications have had a snowb=
all&#39;s chance in hell of getting funding if they were pitched back in th=
e days when the PC platform was based on CPU speeds in the tens of MHz, 2Me=
g of RAM, a 50Meg hard drive, and a 16 bit ISA bus? No. Few saw any reason =
we&#39;d ever need more than that. After the next 10x improvement, people s=
aid the same thing: Why do we need more? Only after about 100x improvement =
did people finally stop saying that, though I&#39;ve noticed it has returne=
d of-late. The cost declines were a vital part of this too, along with the =
performance increases.</span><br style=3D"box-sizing:border-box;color:rgb(4=
4,54,58);font-family:monospace;font-size:14px"><br style=3D"box-sizing:bord=
er-box;color:rgb(44,54,58);font-family:monospace;font-size:14px"><span styl=
e=3D"color:rgb(44,54,58);font-family:monospace;font-size:14px">The lack of =
profitability in today&#39;s consumer data services, and the low subscripti=
on percentages even thought there is fairly wide availability does not mean=
 that the &quot;build it and they will come&quot; mantra has failed for bro=
adband. There is no broadband, so the mantra has not even been tested yet. =
Build it, and operate it under an open access model, with content and conne=
ctivity as separate entities, and they will come. Without that second condi=
tion, I have serious doubts about the possibility for successful PC-like gr=
owth in broadband, even if it is built.</span><br></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 10, 2021 at 1=
:44 PM David Lang &lt;<a href=3D"mailto:david@lang.hm">david@lang.hm</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">the big=
gest problem starlink faces is shipping enough devices (and launching the <=
br>
satellites to support them), not demand. There are enough people interested=
 in <br>
paying full price that if the broadband subsities did not exist, it wouldn&=
#39;t <br>
reduce the demand noticably.<br>
<br>
but if the feds are handing out money, SpaceX is foolish not to apply for i=
t.<br>
<br>
David Lang<br>
<br>
On Tue, 10 Aug 2021, Jeremy Austin wrote:<br>
<br>
&gt; Date: Tue, 10 Aug 2021 12:33:11 -0800<br>
&gt; From: Jeremy Austin &lt;<a href=3D"mailto:jeremy@aterlo.com" target=3D=
"_blank">jeremy@aterlo.com</a>&gt;<br>
&gt; To: <a href=3D"mailto:dickroy@alum.mit.edu" target=3D"_blank">dickroy@=
alum.mit.edu</a><br>
&gt; Cc: Cake List &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" target=
=3D"_blank">cake@lists.bufferbloat.net</a>&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Make-Wifi-fast &lt;<a href=3D"mailto:make-wifi-fast=
@lists.bufferbloat.net" target=3D"_blank">make-wifi-fast@lists.bufferbloat.=
net</a>&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Bob McMahon &lt;<a href=3D"mailto:bob.mcmahon@broad=
com.com" target=3D"_blank">bob.mcmahon@broadcom.com</a>&gt;, <a href=3D"mai=
lto:starlink@lists.bufferbloat.net" target=3D"_blank">starlink@lists.buffer=
bloat.net</a>,<br>
&gt;=C2=A0 =C2=A0 =C2=A0codel &lt;<a href=3D"mailto:codel@lists.bufferbloat=
.net" target=3D"_blank">codel@lists.bufferbloat.net</a>&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0cerowrt-devel &lt;<a href=3D"mailto:cerowrt-devel@l=
ists.bufferbloat.net" target=3D"_blank">cerowrt-devel@lists.bufferbloat.net=
</a>&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat=
.net" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt;<br>
&gt; Subject: Re: [Starlink] Anhyone have a spare couple a hundred million =
... Elon<br>
&gt;=C2=A0 =C2=A0 =C2=A0 may need to start a go-fund-me page!<br>
&gt; <br>
&gt; A 5.7% reduction in funded locations for StarLink is=E2=80=A6 not dram=
atic. If the<br>
&gt; project falls on that basis, they&#39;ve got bigger problems. Much of =
that<br>
&gt; discrepancy falls squarely on the shoulders of the FCC and incumbent I=
SPs<br>
&gt; filing form 477, as well as the RDOF auction being held before improvi=
ng<br>
&gt; mapping =E2=80=94 as Rosenworcel pointed out. The state of broadband m=
apping is<br>
&gt; still dire.<br>
&gt;<br>
&gt; If I felt like the reallocation of funds would be 100% guaranteed to<b=
r>
&gt; benefit the end Internet user=E2=80=A6 I&#39;d cheer too.<br>
&gt;<br>
&gt; If.<br>
&gt;<br>
&gt; JHA<br>
&gt;<br>
&gt; On Tue, Aug 10, 2021 at 12:16 PM Dick Roy &lt;<a href=3D"mailto:dickro=
y@alum.mit.edu" target=3D"_blank">dickroy@alum.mit.edu</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; You may find this of some relevance!<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://arstechnica.com/tech-policy/2021/07/ajit-pai-ap=
parently-mismanaged-9-billion-fund-new-fcc-boss-starts-cleanup/" rel=3D"nor=
eferrer" target=3D"_blank">https://arstechnica.com/tech-policy/2021/07/ajit=
-pai-apparently-mismanaged-9-billion-fund-new-fcc-boss-starts-cleanup/</a><=
br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Cheers (or whatever!),<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; RR<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Starlink mailing list<br>
&gt;&gt; <a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank=
">Starlink@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D=
"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starl=
ink</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div>

<br>
<span style=3D"background-color:rgb(255,255,255)"><font size=3D"2">This ele=
ctronic communication and the information and any files transmitted with it=
, or attached to it, are confidential and are intended solely for the use o=
f the individual or entity to whom it is addressed and may contain informat=
ion that is confidential, legally privileged, protected by privacy laws, or=
 otherwise restricted from disclosure to anyone else. If you are not the in=
tended recipient or the person responsible for delivering the e-mail to the=
 intended recipient, you are hereby notified that any use, copying, distrib=
uting, dissemination, forwarding, printing, or copying of this e-mail is st=
rictly prohibited. If you received this e-mail in error, please return the =
e-mail to the sender, delete it from your computer, and destroy any printed=
 copy of it.</font></span>
--0000000000000a400e05c93c62f5--

--00000000000012073405c93c62ce
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
DrPV5EPUikwiGMDmkX8o6roGiUwyqAp8dMZKJZ/vS/aWEELV+gm21Btr7eqdAWyqm09McVpkM4th
v/FOYcj8DeJr8MXmHW53gN2fv0BzQjqAdrdCBPNRAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpyXYr5rh8cZzkns+zXmMG1YkBk4w
DQYJKoZIhvcNAQELBQADggEBACfauRPak93nzbpn8UXqRZqg6iUZch/UfGj9flerMl4TlK5jWulz
Y+rRg+iWkjiLk3O+kKu6GI8TLXB2rsoTnrHYij96Uad5/Ut3Q5F4S0ILgOWVU38l0VZIGGG0CzG1
eLUgN2zjLg++xJuzqijuKQCJb/3+il2MTJ8dcDaXuYcjg7Vt6+EtCBS1SGMVhOTH4Fp50yGWj8ZA
bPF1uuJM+dGLJLheUizCr5J/OBEdENg+DSmrqoZ+kZd76iRaF2CkhboR2394Ft8lFlKQiU0q8lnR
9/kdZ0F0iCcUfhaLaGYWujW7N0LZ+rQuTfuPGLx9zZNeNMWSZi/Pc8vdCO7EnlIxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwYS+5PXokx35blu9EwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIBlMXuZxj4zQsPJvqhGNNgqHw+MDpyp2Q5XG
kHFTGFxFMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDgxMDIy
NTQyNFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQBw1bERPWyUlfzCeuaXFoh4lw6TzFK9aVPcK9ucczKbhST+qrLneoOz
Fds53vboJfPTY+n9HWxfP4vlawegCT3DSLSbvU/bDed4jwVbvl+l1txpRuJ9ryeLrLqXENC1zTyU
PXtn2HejxdoZe9hcx7O4Uc2Bcz7vESjbqLjyhNEjJTv/321bp4g8RQ3yrewHr+O+GFdpLkJ7vOy8
mYEtW40toawWa2DB8aeKZCyqGNIEuU29Gj85SURfntaZp0LeL6R0/yPK4RLi/AqydjpPM4Yt15hP
2a1YVWIP8nNPFLvTSH4IMYp6pvjIYuCmg5hI8FKbXrPvC+FTBW28jJKAQmkc
--00000000000012073405c93c62ce--

--===============8057035174322917194==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8057035174322917194==--
