Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 749B06699E
	for <lists+cake@lfdr.de>; Fri, 12 Jul 2019 11:07:24 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DA2D33CB38;
	Fri, 12 Jul 2019 05:07:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1562922442;
	bh=Wn+sqHqNzPmjrpJ4LFSxW7n63Pt53JJrSc+mwp8M85A=;
	h=To:In-Reply-To:References:List-Id:List-Post:From:List-Subscribe:
	 List-Unsubscribe:List-Archive:Reply-To:List-Help:Subject:From;
	b=jbMqQ85xs/VxiNNczXeqgp2sR5qvA8XPm+64Rh+FiXpjMwRulMMHTFRwdIMvTI0sc
	 p3oHONMdyNcKL+QN/758YpZ1TnmmLDIz9/u/cdGFzVAMVtE4FTVa3qXblnVkhK8zlX
	 HWT96lrXB3hOdFRgCJ8LXnCFQTlT7Nykv6thkGoKVBX3ogNVTF6f1hrZYuFa9M7AKa
	 XWEGF4dI+AwYL8ToCGaqotTSa9SjYYBGAfvmOlMBz1bnS/f0/rCY08myTqNKMEwOMD
	 dZF/sMNV1QMiwq8nbRswxsD2iCOs2NPkc5u6ee8F6Guo9KJdVTe1DpVxwNuMP5/hS8
	 SwVt31zgRfaGA==
To: "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>
In-Reply-To: <CAA93jw7dwQXxVTur_NfdW+tFpL452+2KDT8tAec2qm1+pqVWXQ@mail.gmail.com>
References: <1406985555.48468.1562879701286.ref@mail.yahoo.com>
 <1406985555.48468.1562879701286@mail.yahoo.com>
 <CAA93jw4WHOSXUiRmp0jZjBkmNoFJyCeDUDQQi0rdBOxTfvuMUw@mail.gmail.com>
 <560938987.28604.1562881745799@mail.yahoo.com>
 <CAA93jw7dwQXxVTur_NfdW+tFpL452+2KDT8tAec2qm1+pqVWXQ@mail.gmail.com>
X-Mailman-Approved-At: Fri, 12 Jul 2019 05:07:21 -0400
MIME-Version: 1.0
Message-ID: <mailman.70.1562922442.1240.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: E Diable Si via Cake <cake@lists.bufferbloat.net>
Precedence: list
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: E Diable Si <tehrslegend@yahoo.com>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: [Cake] Fw: Split-gso vs No-Split-gso
Content-Type: multipart/mixed; boundary="===============5668086805002383289=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5668086805002383289==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <tehrslegend@yahoo.com>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sonic307-1.consmr.mail.bf2.yahoo.com (sonic307-1.consmr.mail.bf2.yahoo.com [74.6.134.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id 6FAF83CB35
	for <cake@lists.bufferbloat.net>; Fri, 12 Jul 2019 04:37:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1562920650; bh=xRrY/dgL1IZMcsJ4pk959aBa0Z0W951X71NSkTlHJwA=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject; b=PUtFAuxhKzkZXgb2WRSqjNG9ahRp9qmKOETkLCgC+cNVWqzQb00oYAqo0N95T4P0HFXmE8A0DTBtyn/z+/KALgfRWgXSaAiHdMSP+e87eLKPVIcBGMnGdnk9knZY0eziVoL6rgddRTiCfFkS+tg2wJhSvkMGzBKdncupXwmBYmynYUrqEJlu0rjfF0unOa2Vjcx917BrrJ8NUbEHCHe5+voxcpje1zsF7bnSKTY3/DCnsQFTcYrMgDDUdLAZgRqyLC09CVB2uZQj8puCWYp1t6MzV6ru1xk/0O2/GOqM7yZYR8Ha+Q4yNem1CQ252Za/wAb6/YRmuLvFlqeEO5iS2A==
X-YMail-OSG: Pt2eW44VM1kGAc3EnrZc.XCrhtZjsaH1RBXunY8Molh3qYJ9o4Da68bFpV2ZNVm
 w6.ejExioHu9fiiAx3Jev22wzjgNJAzwlsQg7aCz1SlCuAyttzTJoCJ2zQ3EtHchMiR1.EHrxygv
 6f_kVB8UXZM8Fu1AR3sVAJ6KiA_CSJY45VDSFNP1NjaijFTT29WtXkMgXvj5qdt4fWTFqgWTPTMU
 MRlzxpMnulXAR2pogvr_GzTzl6kBs1W.w8bcywSxoa1dymzjf5k2khip40TdG8pt61n67lcMglQa
 l.hWnrIaxe5hGruPmjCKGCmi1ZghKk9g9ySwvkjlRrHmgrpTDWH2TgTCEMjDXxHEyO4cj797stoT
 TFOSAM4_WanKhLMX9SmP78gdG6ErMk4vh6U4uOEvQQy48x.nBiWqYGW4rZWxPn3FuAoYj1EumheT
 sv1hQPlfFkb2NAPApzjEIjV.PPG9a1rIj4jl8C.ySd3Ts0EnFBS0OJMVIe18yJoiQAnrFqYakWNf
 Gi5t_F.3EtzhuA1BLTpUE3gxzsCVN8moq6tYJ8wT_tvcQUugysXVBPePfOaR3joLtvfYB7Io_vbf
 IAO6ynV0LPLntY1C0Z0wCJAQiVkqVn4L9iZRb8VswbrSlj6SQdSkizbmqtUCTqWk8i5BToeyhqS6
 jROZm27ObODXGLRkBGSkG33t_RsCzMPwBT74F13TGkzxDrb1Bfov9f4qxD.aVeUizOLQDS9KEIZo
 fNAEe46.08T8ml94YQvUfSTQ6cng1sryLHWwNTGLBvLjKvDFOSkxl7yy5oiQTFbJa3WltEbr1l2z
 7XKW.eZwhdoNYqRFnoWDwDTwdVTj9tTbSwUYFWfvfq_e3poyF4TVE5dFpPIA8KGcgk34XksovZib
 gvtBUIJ60bvvSJLYh8PoXHQ1Wd715YjPOs3UUYBY293lPLylXxHrR6W_JAN03mTr1eSQjuUGQpIW
 biMsF5rLqRR44CGajiGlEzONbQq4XMzl23PvftVs5TStdCYq1yeUYkSBOAsVbgmurD_2XXyOIYF_
 mGRStmaqSBSyiw0b.Hwrrj0B9WvHAV2mEKkMwXzEF3Xk_qq4HwlS_lpIcTcukYSaZvHEDJh3QjFI
 YvJAErGBoa7dqlxrQv_iyYHPhVyavF_ehhV3lyLOj62B4fcl6T3y8tXKVVWP1hxF_YHI4lyvwgbW
 6oGgf4SrM6VvNjgbdApyGAproqYBFWpsoa.9SLg4SKZm969EXJotRxIgGrM9H_uy_fNg6tF4NhP0
 EeGajZC8OC__q8elx8s8-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.bf2.yahoo.com with HTTP; Fri, 12 Jul 2019 08:37:30 +0000
Date: Fri, 12 Jul 2019 08:37:24 +0000 (UTC)
From: E Diable Si <tehrslegend@yahoo.com>
To: "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>
Message-ID: <1067804730.155701.1562920644963@mail.yahoo.com>
In-Reply-To: <CAA93jw7dwQXxVTur_NfdW+tFpL452+2KDT8tAec2qm1+pqVWXQ@mail.gmail.com>
References: <1406985555.48468.1562879701286.ref@mail.yahoo.com> <1406985555.48468.1562879701286@mail.yahoo.com> <CAA93jw4WHOSXUiRmp0jZjBkmNoFJyCeDUDQQi0rdBOxTfvuMUw@mail.gmail.com> <560938987.28604.1562881745799@mail.yahoo.com> <CAA93jw7dwQXxVTur_NfdW+tFpL452+2KDT8tAec2qm1+pqVWXQ@mail.gmail.com>
Subject: Fw: Split-gso vs No-Split-gso
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_155700_627641536.1562920644961"
X-Mailer: WebService/1.1.13991 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36
X-Mailman-Approved-At: Fri, 12 Jul 2019 05:07:21 -0400

------=_Part_155700_627641536.1562920644961
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi, i think Cake has some issues.=C2=A0
I've read multiple reports on CAKE SQM failing to do its job and massive bu=
fferbloat.=C2=A0
They still can't find out whats the issue.=C2=A0
I used to have a WNDR3700v4 back in may 2019 and it worked fine, my brother=
 then wanted me to revert back to oem settings and after a month and half i=
 got a new router R7800 and for some reason it's failing to do the job with=
 2 cores rather than 1 core and more RAM & higher CPU frequency.=C2=A0
Can you please take a look at it.
1. Also, i'm not sure whether its openwrt or cake thats responsible for lis=
ting the link layer adaption but you guys say its 44.https://openwrt.org/do=
cs/guide-user/network/traffic-shaping/sqm
https://openwrt.org/docs/guide-user/network/traffic-shaping/sqm-details
https://forum.openwrt.org/t/your-post-in-sqm-high-latency/40018/35


While on this site, it says to choose NONE if you have fiber.https://www.bu=
fferbloat.net/projects/cerowrt/wiki/Setting_up_SQM_for_CeroWrt_310/
https://forum.openwrt.org/t/your-post-in-sqm-high-latency/40018/35


Articles on issues with Cake SQM:https://forum.openwrt.org/t/r7800-sqm-sett=
ings-keep-causing-bufferbloat/39720=C2=A0<- This is my thread on my issue w=
ith the R7800. I also have a private message with mindwolf but can't send i=
t to anyone as no option for sharing.
https://forum.openwrt.org/t/startup-initscripts-enabled-or-disabled-by-defa=
ult-also-sqm-question/37364/7=C2=A0<- Older article with my Wndr3700v4 rout=
er that was working great.
https://forum.openwrt.org/t/sqm-high-latency/1087/93
https://forum.openwrt.org/t/sqm-has-no-effect/39825
https://forum.openwrt.org/t/sqm-no-change-in-dslreports-test/37037


3. Below is a email i sent to Dave Taht because i believed maybe he could h=
elp me out with the split-gso setting, with it on by default in SQM even th=
ough you can't change it yourself in the GUI for OpenWrt, it caused me hour=
s of headaches trying to figure out which setting is causing me massive buf=
ferbloat.With no-split-gso i was getting less ping/ms bufferbloat in dslrep=
orts.=C2=A0I noticed with split-gso that with it enabled it felt a bit more=
 less latency but dslreports indicated my pipelines are being hammered with=
 traffic at 200-500ms.With no-split-gso i was getting maximum was 25ms. Ple=
ase take a look at my thread.


   ----- Forwarded Message ----- From: Dave Taht <dave.taht@gmail.com>To: E=
 Diable Si <tehrslegend@yahoo.com>Sent: Thursday, July 11, 2019, 11:41:57 P=
M PDTSubject: Re: Split-gso vs No-Split-gso
 cake mailing list

On Thu, Jul 11, 2019 at 2:49 PM E Diable Si <tehrslegend@yahoo.com> wrote:
>
> Didn't quite follow, if you meant mess with Cake settings, I've done that=
. I went with stock settings for CAKE, layer_cake.qos or piece_of_cake.qos =
and it did not perform well.=C2=A0Ihad issues with my bufferbloat tests rea=
ch from around 100ms and stayed around 250-450ms and peaks to 1100ms.=C2=A0
I did everything imo i could, my tests were inconclusive until mindwolf gav=
e me some tips and advice by going at it by CLI rather than SQM in GUI and =
realized my issues has much to do with split-gso test.=C2=A0
If only i can send you a private message SHARED of what i sent to mindwolf,=
 i would love to see if you can detect something i've missed, split-gso sho=
uld be better for latency.
> Have you wondered that with some latency settings like split-gso, you act=
ually can feel the less latency in your mouse movements?=C2=A0
It doesn't feel like your mouse skates are binding/sticking to your mouse p=
ad.=C2=A0
I might redo my tests once more time with SQM in GUI and delete all command=
s from local startup.=C2=A0
Some said my issues had to do with my R7800 router as it has problems with =
the CPU freq dropping back to idle maybe causing the higher ping so i went =
with performance governor and been testing for 2 weeks.

>
> On Thursday, July 11, 2019, 02:26:19 PM PDT, Dave Taht <dave.taht@gmail.c=
om> wrote:
>
>
> sure, but interact with the cake list, not me?
>
> On Thu, Jul 11, 2019 at 2:15 PM E Diable Si <tehrslegend@yahoo.com> wrote=
:
> >
> > I've read your tests but i got something totally different. Could you t=
ake a look?
> >
> > Is there any way i can send you the private messages i had with another=
 user on openwrt forums to take a look at the test i performed because i go=
t tons of bufferbloat right after i enabled split-gso. With SQM in LuCI GUI=
, it doesn't perform right for me. I keep getting massive ping spiking to 2=
00ms-1000ms.
> >
> > https://lists.bufferbloat.net/pipermail/cake/2018-July/004182.html
>
>
>
>
> --
>
> Dave T=C3=A4ht
> CTO, TekLibre, LLC
> http://www.teklibre.com
> Tel: 1-831-205-9740



--=20

Dave T=C3=A4ht
CTO, TekLibre, LLC
http://www.teklibre.com
Tel: 1-831-205-9740 =20
------=_Part_155700_627641536.1562920644961
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf924f71dyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi, i think Cake has some is=
sues.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">I've read multiple reports on CAKE SQM faili=
ng to do its job and massive bufferbloat.&nbsp;</div><div dir=3D"ltr" data-=
setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">They stil=
l can't find out whats the issue.&nbsp;</div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I used to have =
a WNDR3700v4 back in may 2019 and it worked fine, my brother then wanted me=
 to revert back to oem settings and after a month and half i got a new rout=
er R7800 and for some reason it's failing to do the job with 2 cores rather=
 than 1 core and more RAM &amp; higher CPU frequency.&nbsp;</div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">Can you please take a look at it.</div><div dir=3D"ltr" data-setdir=3D=
"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">1. Also, i'm not s=
ure whether its openwrt or cake thats responsible for listing the link laye=
r adaption but you guys say its 44.</div><div dir=3D"ltr" data-setdir=3D"fa=
lse"><a href=3D"https://openwrt.org/docs/guide-user/network/traffic-shaping=
/sqm" rel=3D"nofollow" target=3D"_blank">https://openwrt.org/docs/guide-use=
r/network/traffic-shaping/sqm</a><br></div><div dir=3D"ltr" data-setdir=3D"=
false"><span class=3D"ydp16033890pasted-link"><a href=3D"https://openwrt.or=
g/docs/guide-user/network/traffic-shaping/sqm-details" rel=3D"nofollow" tar=
get=3D"_blank">https://openwrt.org/docs/guide-user/network/traffic-shaping/=
sqm-details</a></span><br></div><div dir=3D"ltr" data-setdir=3D"false"><a h=
ref=3D"https://forum.openwrt.org/t/your-post-in-sqm-high-latency/40018/35" =
rel=3D"nofollow" target=3D"_blank">https://forum.openwrt.org/t/your-post-in=
-sqm-high-latency/40018/35</a><br></div><div dir=3D"ltr" data-setdir=3D"fal=
se"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"=
ltr" data-setdir=3D"false">While on this site, it says to choose NONE if yo=
u have fiber.</div><div dir=3D"ltr" data-setdir=3D"false"><a href=3D"https:=
//www.bufferbloat.net/projects/cerowrt/wiki/Setting_up_SQM_for_CeroWrt_310/=
" rel=3D"nofollow" target=3D"_blank">https://www.bufferbloat.net/projects/c=
erowrt/wiki/Setting_up_SQM_for_CeroWrt_310/</a><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false"><a href=3D"https://forum.openwrt.org/t/your-post-in-sq=
m-high-latency/40018/35" rel=3D"nofollow" target=3D"_blank">https://forum.o=
penwrt.org/t/your-post-in-sqm-high-latency/40018/35</a><br></div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse"><br></div><div dir=3D"ltr" data-setdir=3D"false">Articles on issues wi=
th Cake SQM:</div><div dir=3D"ltr" data-setdir=3D"false"><span class=3D"ydp=
3fb9aabpasted-link"><a href=3D"https://forum.openwrt.org/t/r7800-sqm-settin=
gs-keep-causing-bufferbloat/39720" rel=3D"nofollow" target=3D"_blank">https=
://forum.openwrt.org/t/r7800-sqm-settings-keep-causing-bufferbloat/39720</a=
>&nbsp;&lt;- This is my thread on my issue with the R7800. I also have a pr=
ivate message with mindwolf but can't send it to anyone as no option for sh=
aring.</span><br></div><div dir=3D"ltr" data-setdir=3D"false"><span class=
=3D"ydp3fb9aabpasted-link"><span class=3D"ydpfd011850pasted-link"><a href=
=3D"https://forum.openwrt.org/t/startup-initscripts-enabled-or-disabled-by-=
default-also-sqm-question/37364/7" rel=3D"nofollow" target=3D"_blank">https=
://forum.openwrt.org/t/startup-initscripts-enabled-or-disabled-by-default-a=
lso-sqm-question/37364/7</a>&nbsp;&lt;- Older article with my Wndr3700v4 ro=
uter that was working great.</span><br></span></div><div dir=3D"ltr" data-s=
etdir=3D"false"><span class=3D"ydp3fb9aabpasted-link"><span class=3D"ydpfd0=
11850pasted-link"><span class=3D"ydpce25efeepasted-link"><a href=3D"https:/=
/forum.openwrt.org/t/sqm-high-latency/1087/93" rel=3D"nofollow" target=3D"_=
blank">https://forum.openwrt.org/t/sqm-high-latency/1087/93</a></span><br><=
/span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span class=3D"yd=
p3fb9aabpasted-link"><span class=3D"ydpfd011850pasted-link"><span class=3D"=
ydp641f2cefpasted-link"><a href=3D"https://forum.openwrt.org/t/sqm-has-no-e=
ffect/39825" rel=3D"nofollow" target=3D"_blank">https://forum.openwrt.org/t=
/sqm-has-no-effect/39825</a></span><br></span></span></div><div dir=3D"ltr"=
 data-setdir=3D"false"><span class=3D"ydp3fb9aabpasted-link"><span class=3D=
"ydpfd011850pasted-link"><span class=3D"ydp4da240ddpasted-link"><a href=3D"=
https://forum.openwrt.org/t/sqm-no-change-in-dslreports-test/37037" rel=3D"=
nofollow" target=3D"_blank">https://forum.openwrt.org/t/sqm-no-change-in-ds=
lreports-test/37037</a></span><br></span></span></div><div><br></div><div><=
br></div><div dir=3D"ltr" data-setdir=3D"false">3. Below is a email i sent =
to Dave Taht because i believed maybe he could help me out with the split-g=
so setting, with it on by default in SQM even though you can't change it yo=
urself in the GUI for OpenWrt, it caused me hours of headaches trying to fi=
gure out which setting is causing me massive bufferbloat.</div><div dir=3D"=
ltr" data-setdir=3D"false">With no-split-gso i was getting less ping/ms buf=
ferbloat in dslreports.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false">I=
 noticed with split-gso that with it enabled it felt a bit more less latenc=
y but dslreports indicated my pipelines are being hammered with traffic at =
200-500ms.</div><div dir=3D"ltr" data-setdir=3D"false">With no-split-gso i =
was getting maximum was 25ms. Please take a look at my thread.</div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div>
       =20
        </div><div id=3D"ydpe545a1d3yahoo_quoted_3318544113" class=3D"ydpe5=
45a1d3yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
                <div>----- Forwarded Message -----</div>
                <div><b>From:</b> Dave Taht &lt;dave.taht@gmail.com&gt;</di=
v><div><b>To:</b> E Diable Si &lt;tehrslegend@yahoo.com&gt;</div><div><b>Se=
nt:</b> Thursday, July 11, 2019, 11:41:57 PM PDT</div><div><b>Subject:</b> =
Re: Split-gso vs No-Split-gso</div><div><br></div>
                <div><div dir=3D"ltr">cake mailing list<br clear=3D"none"><=
br clear=3D"none">On Thu, Jul 11, 2019 at 2:49 PM E Diable Si &lt;<a shape=
=3D"rect" href=3D"mailto:tehrslegend@yahoo.com" rel=3D"nofollow" target=3D"=
_blank">tehrslegend@yahoo.com</a>&gt; wrote:<br clear=3D"none">&gt;<br clea=
r=3D"none">&gt; Didn't quite follow, if you meant mess with Cake settings, =
I've done that. I went with stock settings for CAKE, layer_cake.qos or piec=
e_of_cake.qos and it did not perform well.&nbsp;</div><div dir=3D"ltr" data=
-setdir=3D"false">I</div><div dir=3D"ltr" data-setdir=3D"false">had issues =
with my bufferbloat tests reach from around 100ms and stayed around 250-450=
ms and peaks to 1100ms.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><=
br></div><div dir=3D"ltr" data-setdir=3D"false">I did everything imo i coul=
d, my tests were inconclusive until mindwolf gave me some tips and advice b=
y going at it by CLI rather than SQM in GUI and realized my issues has much=
 to do with split-gso test.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"fals=
e"><br></div><div dir=3D"ltr" data-setdir=3D"false">If only i can send you =
a private message SHARED of what i sent to mindwolf, i would love to see if=
 you can detect something i've missed, split-gso should be better for laten=
cy.</div><div dir=3D"ltr" data-setdir=3D"false"><br clear=3D"none">&gt; Hav=
e you wondered that with some latency settings like split-gso, you actually=
 can feel the less latency in your mouse movements?&nbsp;</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>It doesn't feel like your mouse skates are binding/sticking to your mouse =
pad.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">I might redo my tests once more time with SQ=
M in GUI and delete all commands from local startup.&nbsp;</div><div dir=3D=
"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false=
">Some said my issues had to do with my R7800 router as it has problems wit=
h the CPU freq dropping back to idle maybe causing the higher ping so i wen=
t with performance governor and been testing for 2 weeks.</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
><br clear=3D"none">&gt;<br clear=3D"none">&gt; On Thursday, July 11, 2019,=
 02:26:19 PM PDT, Dave Taht &lt;<a shape=3D"rect" href=3D"mailto:dave.taht@=
gmail.com" rel=3D"nofollow" target=3D"_blank">dave.taht@gmail.com</a>&gt; w=
rote:<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt; =
sure, but interact with the cake list, not me?<br clear=3D"none">&gt;<br cl=
ear=3D"none">&gt; On Thu, Jul 11, 2019 at 2:15 PM E Diable Si &lt;<a shape=
=3D"rect" href=3D"mailto:tehrslegend@yahoo.com" rel=3D"nofollow" target=3D"=
_blank">tehrslegend@yahoo.com</a>&gt; wrote:<br clear=3D"none">&gt; &gt;<br=
 clear=3D"none">&gt; &gt; I've read your tests but i got something totally =
different. Could you take a look?<br clear=3D"none">&gt; &gt;<br clear=3D"n=
one">&gt; &gt; Is there any way i can send you the private messages i had w=
ith another user on openwrt forums to take a look at the test i performed b=
ecause i got tons of bufferbloat right after i enabled split-gso. With SQM =
in LuCI GUI, it doesn't perform right for me. I keep getting massive ping s=
piking to 200ms-1000ms.<br clear=3D"none">&gt; &gt;<br clear=3D"none">&gt; =
&gt; <a shape=3D"rect" href=3D"https://lists.bufferbloat.net/pipermail/cake=
/2018-July/004182.html" rel=3D"nofollow" target=3D"_blank">https://lists.bu=
fferbloat.net/pipermail/cake/2018-July/004182.html</a><br clear=3D"none">&g=
t;<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br =
clear=3D"none">&gt; --<br clear=3D"none">&gt;<br clear=3D"none">&gt; Dave T=
=C3=A4ht<br clear=3D"none">&gt; CTO, TekLibre, LLC<br clear=3D"none">&gt; <=
a shape=3D"rect" href=3D"http://www.teklibre.com" rel=3D"nofollow" target=
=3D"_blank">http://www.teklibre.com</a><br clear=3D"none">&gt; Tel: 1-831-2=
05-9740<div class=3D"ydpe545a1d3yqt6314323211" id=3D"ydpe545a1d3yqtfd77262"=
><br clear=3D"none"><br clear=3D"none"><br clear=3D"none"><br clear=3D"none=
">-- <br clear=3D"none"><br clear=3D"none">Dave T=C3=A4ht<br clear=3D"none"=
>CTO, TekLibre, LLC<br clear=3D"none"><a shape=3D"rect" href=3D"http://www.=
teklibre.com" rel=3D"nofollow" target=3D"_blank">http://www.teklibre.com</a=
><br clear=3D"none">Tel: 1-831-205-9740</div></div></div>
            </div>
        </div></body></html>
------=_Part_155700_627641536.1562920644961--

--===============5668086805002383289==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5668086805002383289==--
