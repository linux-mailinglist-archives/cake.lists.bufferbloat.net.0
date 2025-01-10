Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D17EA0981B
	for <lists+cake@lfdr.de>; Fri, 10 Jan 2025 18:08:02 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 309B73CB39;
	Fri, 10 Jan 2025 12:08:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736528881;
	bh=9f3/cCmh9X7GqM0mQZ542USV5U3SXNDrO5uL+WeabCs=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=SlaW4AB00/8OjNWusrI0Cch0nMu1BBUVWDT4vAHdwXp0wJm0ALli7p2Io/s2l8qto
	 GgTBHOs4A4m9FPlrIhAq4tWXxiVvh4mVisECmr17pgnZ/eSvZ9kV+D1/t8GrkU0+Nj
	 qrK/+Yn6a7+GPyI+BhkNEcAFVNcg5ps2+w9QvuBmAXomqGOKgSRtgAKiZdDdLl+G7v
	 HUKpt8rtr6JraUIdi5MER/LdmZ6SSeBXbwzRa0m7y42YNPCtPhptQMinTAeAMYlE/D
	 0G1GXxqKf2AqMojUgS2JT1gwCQqwPVHwLZrKp6/UovMraEaP+D2krM/414vQ9suAjN
	 rYCqHme7Sl9hA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com
 [IPv6:2001:4860:4864:20::31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4F6C63B29E
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 12:08:00 -0500 (EST)
Received: by mail-oa1-x31.google.com with SMTP id
 586e51a60fabf-29e5aedbebdso1094884fac.0
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 09:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736528879; x=1737133679; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=cXudahsqak2ImclcJcQlhQxs28vWFr4vdxQi1c8Ob3s=;
 b=jikaaduoLPtcSUgMrTaMa+u4r6Dsil/recdiHLKCwD1E24SP0dEFe1Y4eAbvKipdb6
 AiVVccIHbUWdrKTmmSvFj9T2V0N6RA+UKyq04z9XdC2K0z+64Y1NZ1xH0n+Y3p5ivBxc
 yVGIzcOoYAepNIWoG6gEAY6HHVcPjxLL7hbcaJxJrcH/vzkZcnHSxseJ9nQXqkn+t3ES
 ESHmDU/BKfwtAfSexYFlZcZX7YjBQCmh/Cd/2a8YKGaKq86ZrhTaSedtuz1yIM1QTRXG
 7TTZ00Iaoep0jT0rObMiSTWFhDg44c47lHGA7lIX4f/upqjHWz7e8dXZ8Qx6CiYSe/Ku
 d1nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736528879; x=1737133679;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cXudahsqak2ImclcJcQlhQxs28vWFr4vdxQi1c8Ob3s=;
 b=lYTPAHRGiWnXapu5k2cF4whozDQ0XyoYA6qpd2F/nE/dDyQ3WombAUk5+sWTCNtzeQ
 k9RUkwKotoOzwAOESUVdNd2W4kVxisyxddLZEtMlwmWhn642MqtNGaEZwLBxJomiQQaB
 Q4qIb2/4jCdbI3l/ESN0yO6x/JQpF7tZEKiEwPVgOcCTXEKMGYKEB1nGJZowtnAwh/KS
 qq2D6xCfe8j+3/Z8unsjXXfNc4KsqdXGe1ecOMryirAlLUU9pEuLw+MGlb94Zv1+WEx2
 DhjCT5dttFtSJn0Pti7FwwznYMHh3WRVnE9XT0yedQR98QMOXUCLFMulKI1v6QI+8FSZ
 1g6g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWxdumqWxse2FDnrsmAgBuXuWJr5AknUxBeTviNHC729Sb+KGTH5jMQwPoMBfTDEihBazsv@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxcLolcenbVn3IHSANGpmozjT2hSaGt8lw7I1dXBGgbFDrGacu6
 46KByeZf6Q+sMN1+INg43m+yzJ3Wy9W/B+XiB3tKZf9F4i5lTI6EWobObdhZ0m29yp3gyaixgCv
 sbm+vrWCtAWSDamdSnGGtUaaVNwE=
X-Gm-Gg: ASbGncuIQ6AXojhvPede9LAJBUmfO+sRNQVhg49nTh1hqAW59cayXH5fc7kIuypRPow
 3RLaL4j1F1/weOSOjqzi7GC7XECnTlIxkE80=
X-Google-Smtp-Source: AGHT+IFJrz5TJi8kZegbXRcUYdLD4YwfVouGmrPPQHLK4OESwq8XLadNrOn5Z01HtTEHssCqR3Zu9KTnpkAW13anj54=
X-Received: by 2002:a05:6870:9c83:b0:28c:8476:dd76 with SMTP id
 586e51a60fabf-2aa0690e62amr6777948fac.29.1736528879417; Fri, 10 Jan 2025
 09:07:59 -0800 (PST)
MIME-Version: 1.0
References: <20250110155531.300303-1-toke@redhat.com>
 <2FE6B2E2-9A34-47C1-B203-F0C424F00704@gmx.de>
 <CAA93jw54GOfYP56XTh-jjjfAbybNDeYUgUENNA2+aSQbXpS91A@mail.gmail.com>
 <FAD46B40-2142-4254-BA44-C9AD9EEFB924@gmx.de>
In-Reply-To: <FAD46B40-2142-4254-BA44-C9AD9EEFB924@gmx.de>
Date: Fri, 10 Jan 2025 09:07:46 -0800
X-Gm-Features: AbW1kvZYX9_xVKZxAfRozxClUZjANiF-ESQ2wxX8_D9MdSHyRnx3vqxwS2aX9dU
Message-ID: <CAA93jw4mj2RdtqdDT3ug5j8EZSsYujC1V_SjQEcjmCVCUZU+jw@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Content-Type: multipart/mixed; boundary="000000000000001bba062b5d2319"
Subject: Re: [Cake] [PATCH net-next] sched: sch_cake: Align QoS treatment to
 Windows and Zoom
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: cake@lists.bufferbloat.net,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--000000000000001bba062b5d2319
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2025 at 9:02=E2=80=AFAM Sebastian Moeller <moeller0@gmx.de>=
 wrote:
>
>
>
> On 10 January 2025 17:34:45 CET, Dave Taht <dave.taht@gmail.com> wrote:
> >actually in re-reading that, I think it leaves nqb in 0 (44, not 45,
> >is now VI), which wasn't my intent.
> >
> >More below...
> >
> >On Fri, Jan 10, 2025 at 8:24=E2=80=AFAM Sebastian Moeller <moeller0@gmx.=
de> wrote:
> >>
> >> Mmmh. off the Linux lists/folks for discussion:
> >>
> >> can I propose to drop NQB down to BestEffort? The supposed requirement=
s for NQB marking should make these flows thrive in a flow isolating schedu=
ler like cake without any special treatment... moving it to Video or worse =
Voice really only invites abuse...
> >
> >I would prefer consistent behavior.
>
> Without proper policing, NQB in Voice, with all/most other traffic in Bes=
tEffort a single NQB flow can easily hog up to 50% (I believe this is the c=
ake default) of capacity...
> first rule of priority schedulers think twice before exposing a priority =
scheduler without admission control to the wider internet...

I do not think NQB belongs in Voice (which shares priority with
netcontrol, etc). I also do not think it belongs in best effort as the
intent is to get a quick response to a short flow. yes, FQ solves a
lot of problems, but

At some point you have to trust the intent..

>
> >
> >>
> >>
> >>
> >> > On 10. Jan 2025, at 16:55, Toke H=C3=B8iland-J=C3=B8rgensen via Cake=
 <cake@lists.bufferbloat.net> wrote:
> >> >
> >> > From: Dave Taht <dave.taht@gmail.com>
> >> >
> >> > Cake's diffserv4 mode attempted to follow the IETF webrtc
> >> > QoS marking standards, RFC8837.
> >> >
> >> > It turns out Windows QoS can only use CS0, CS1, CS5, and CS7.
> >>
> >> Nah, applications apparently can only request a small set of DSCPs, bu=
t it is possible to make whole applications use a different DSCP:
> >> example for making putty use EF
> >>
> >> New-NetQosPolicy -Name "putty" -AppPathNameMatchCondition "putty.exe" =
-PolicyStore ActiveStore -NetworkProfile All -DSCPAction 46
> >
> >Within an App...
>
> Yepp, that solves zoom's issue, as I am willing to bet default all CS0 zo=
om does not have fluidity issues due to congesting itself...
>
> >
> >>
> >>
> >> >
> >> > Zoom defaults to using CS5 for video and screen sharing traffic.
> >>
> >> Zoom defaults to using CS0 (my packet captures) unless an adminstrator=
 enables DSCPs, which I assume will only/mostly happen for business account=
s.
> >
> >I have seen it enabled.
>
> Sure, on business accounts that do come with an administrator access to t=
he businesses zoom account... typical home users are CS0 all the way, all t=
he time.
>
> > I have also multiple reports of "stuttering",
> >which I am hoping this resolves.
> >
> >>
> >> > Bump CS4, CS5, and NQB to the video tin (2) in diffserv4 mode, for
> >> > more bandwidth and lower priority.
> >>
> >> I do endorse that, but that change will affect all current users of ca=
ke as parts of their individual QoS hierarchies.
> >
> >I think windows users are not as  clued.
>
> They are also not that likely to use cake in the first place... so for th=
e convenience on users we do not have we risk annoying experienced users. I=
 am not saying this should stop us but we should consider that, after all t=
his can not easily be overridden via the commandline.
>
> >> >
> >> > This also better aligns with how WiFi presently treats CS5 and NQB.
> >>
> >> Two issues: it is not that default WiFi uses a sane system to begin wi=
th, and NQB IMHO should not be elevated in priority unless it is also polic=
ed well, something neither WiFi nor cake will do out of the box.
> >>
> >>
> >> >
> >> > Signed-off-by: Dave Taht <dave.taht@gmail.com>
> >> > Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> >> > ---
> >> > net/sched/sch_cake.c | 4 ++--
> >> > 1 file changed, 2 insertions(+), 2 deletions(-)
> >> >
> >> > diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
> >> > index 48dd8c88903f..2a9288d4b873 100644
> >> > --- a/net/sched/sch_cake.c
> >> > +++ b/net/sched/sch_cake.c
> >> > @@ -328,8 +328,8 @@ static const u8 diffserv4[] =3D {
> >> > 1, 0, 0, 0, 0, 0, 0, 0,
> >> > 2, 0, 2, 0, 2, 0, 2, 0,
> >> > 2, 0, 2, 0, 2, 0, 2, 0,
> >> > - 3, 0, 2, 0, 2, 0, 2, 0,
> >> > - 3, 0, 0, 0, 3, 0, 3, 0,
> >> > + 2, 0, 2, 0, 2, 0, 2, 0,
> >> > + 2, 0, 0, 0, 2, 0, 3, 0,
> >> > 3, 0, 0, 0, 0, 0, 0, 0,
> >> > 3, 0, 0, 0, 0, 0, 0, 0,
> >> > };
> >> > --
> >> > 2.47.1
> >> >
> >> > _______________________________________________
> >> > Cake mailing list
> >> > Cake@lists.bufferbloat.net
> >> > https://lists.bufferbloat.net/listinfo/cake
> >>
> >
> >
>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.



--=20
Dave T=C3=A4ht CSO, LibreQos

--000000000000001bba062b5d2319
Content-Type: application/octet-stream; 
	name="0001-sch_cake-Align-QoS-treatment-to-Windows-and-Zoom.patch"
Content-Disposition: attachment; 
	filename="0001-sch_cake-Align-QoS-treatment-to-Windows-and-Zoom.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_m5r0b87y0>
X-Attachment-Id: f_m5r0b87y0

RnJvbSAyMzA1MWZkZTMyNzM4NGEzNzAxYTU4MDE0ZjYzZGE5ODAzNWQ1MzFhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+CkRhdGU6
IFRodSwgOSBKYW4gMjAyNSAxODoyMzowMSArMDAwMApTdWJqZWN0OiBbUEFUQ0hdIHNjaF9jYWtl
OiBBbGlnbiBRb1MgdHJlYXRtZW50IHRvIFdpbmRvd3MgYW5kIFpvb20KCkNha2UncyBkaWZmc2Vy
djQgbW9kZSBhdHRlbXB0ZWQgdG8gZm9sbG93IHRoZSBJRVRGIHdlYnJ0YwpRb1MgbWFya2luZyBz
dGFuZGFyZHMgaW4gUkZDODgzNy4KCkl0IHR1cm5zIG91dCBXaW5kb3dzIEFwcGxpY2F0aW9uIGxl
dmVsIFFvUyBjYW4gb25seSBzZWxlY3QKQ1MwLCBDUzEsIENTNSwgYW5kIENTNy4gCgpZb3UgY2Fu
IGFjdHVhbGx5IHNldCBhbnl0aGluZyBhdCB0aGUgc2hlbGwgdmlhIChmb3IgZXhhbXBsZSk6CgpO
ZXctTmV0UW9zUG9saWN5IC1OYW1lICJwdXR0eSIgLUFwcFBhdGhOYW1lTWF0Y2hDb25kaXRpb24g
InB1dHR5LmV4ZSIKLVBvbGljeVN0b3JlIEFjdGl2ZVN0b3JlIC1OZXR3b3JrUHJvZmlsZSBBbGwg
LURTQ1BBY3Rpb24gNDYKCkJ1dDoKClpvb20gZGVmYXVsdHMgdG8gdXNpbmcgQ1M1IGZvciB2aWRl
byBhbmQgc2NyZWVuIHNoYXJpbmcgdHJhZmZpYy4KCkJ1bXAgQ1M0LCBDUzUsIGFuZCBOUUIgdG8g
dGhlIHZpZGVvIHRpbiAoMikgaW4gZGlmZnNlcnY0IG1vZGUsIGZvcgptb3JlIGJhbmR3aWR0aCBh
bmQgbGVzcyBwcmlvcml0eS4KClRoaXMgYWxzbyBiZXR0ZXIgYWxpZ25zIHdpdGggaG93IFdpRmkg
cHJlc2VudGx5IHRyZWF0cyBDUzUgYW5kIE5RQi4KCgotLS0KIG5ldC9zY2hlZC9zY2hfY2FrZS5j
IHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtl
LmMKaW5kZXggZGViMDkyNWY1MzZkLi41MmM2ZmFmMmMyNzMgMTAwNjQ0Ci0tLSBhL25ldC9zY2hl
ZC9zY2hfY2FrZS5jCisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCkBAIC0zMjgsOCArMzI4LDgg
QEAgc3RhdGljIGNvbnN0IHU4IGRpZmZzZXJ2NFtdID0gewogCTEsIDAsIDAsIDAsIDAsIDAsIDAs
IDAsCiAJMiwgMCwgMiwgMCwgMiwgMCwgMiwgMCwKIAkyLCAwLCAyLCAwLCAyLCAwLCAyLCAwLAot
CTMsIDAsIDIsIDAsIDIsIDAsIDIsIDAsCi0JMywgMCwgMCwgMCwgMywgMCwgMywgMCwKKwkyLCAw
LCAyLCAwLCAyLCAwLCAyLCAwLAorCTIsIDAsIDAsIDAsIDIsIDIsIDMsIDAsCiAJMywgMCwgMCwg
MCwgMCwgMCwgMCwgMCwKIAkzLCAwLCAwLCAwLCAwLCAwLCAwLCAwLAogfTsKLS0gCjIuNDMuMAoK
--000000000000001bba062b5d2319
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--000000000000001bba062b5d2319--
