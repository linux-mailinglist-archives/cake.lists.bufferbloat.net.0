Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D04A2EC36
	for <lists+cake@lfdr.de>; Mon, 10 Feb 2025 13:06:27 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D20383CB43;
	Mon, 10 Feb 2025 07:06:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1739189185;
	bh=22OCzfCgSVOLWMHh7ovlnqobO/J/eoJUuKLUINv1xL0=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=fxekylQbHSZJtr83Nf72iKXU6GZ/9DPd8EqtUR0PoTpYQOjsgnmBgXp7DhKo3GQAy
	 51+BgU4pDyobscawcAYS8dtCJfbBCBytorkOlwqB8ojl7JwpJKDTUeK5f1ipAFlTre
	 fFL3yW7S9bA1Pyz4+1pIIWnmdqIsNZytgUtkYLocqiRMegz4kaMhKJjWS/mWFOk+SY
	 Eb9n+Dl5g4PWn7wWJN7D7bw2xkr7I89DGsOyx7fVCmGh8uTjq1uhDe1c9Hde6P0Jff
	 TIZ88qPquagevzJN1hUwr3BGr4O5l0k3tA2T/SqD56Xa4RbQurq9afvFHaUCXmFnhp
	 CsR0u6LwYJ5Fw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E6D1B3B29D
 for <cake@lists.bufferbloat.net>; Mon, 10 Feb 2025 07:06:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1739189181; x=1739793981; i=moeller0@gmx.de;
 bh=eNo/4jChJDpxAfhH1vaP4h7+xgk2cVqVTAwywacLMro=;
 h=X-UI-Sender-Class:Content-Type:Mime-Version:Subject:From:
 In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:
 References:To:cc:content-transfer-encoding:content-type:date:from:
 message-id:mime-version:reply-to:subject:to;
 b=a1xUg812zN+9Q6ggRAGdXfpzKVBRQ1VfJ9Mx8u3nhY0zXhy5jrLpE60g6I/CBo7t
 5o9srjhgMSFSfbYUEKFS+1zUbX14j+OwfI/PfvQ6zFu0hRTv5zpk2Ino2iMD3YGbj
 UpcoRaM1dEPVNMsOw1GU26tWDrqLIa5MwUL38DtaX/8gk839V3BLhp0yAf5X9cJOd
 Gzkxf/dJCleSIazquet7RNjlNh5Vna4ZrHtp+mAM3jqYim51pLtwI+oiNqsOBnNMU
 ISSIgP9ieru/vCoxpEmaa4Cc4IpOzW09ZQHo2o6FGD1+TjqGwU78G0hY0PH53fsnj
 V5bugnBwwNAOKNWQOA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MKsnP-1txbrF4A17-00OL73; Mon, 10
 Feb 2025 13:06:21 +0100
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.1\))
In-Reply-To: <875xlirssb.fsf@toke.dk>
Date: Mon, 10 Feb 2025 13:06:10 +0100
Message-Id: <5DFA90A5-9FDB-4B3E-8C80-A33D02632E7E@gmx.de>
References: <CAM0EoM=bFMVMV-f2n4BNSJoqOAxqr+kcJ9kg2NLVvmw2rX-2WA@mail.gmail.com>
 <87bjvarvtd.fsf@toke.dk> <564C0719-2569-4A8A-981D-35F9473F8AF2@gmx.de>
 <875xlirssb.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3776.700.51.11.1)
X-Provags-ID: V03:K1:guVAqaEAh8PGxqR15+We4vplFq1Stqi8osd13Tj1lZ7TN4PW0Qm
 6radoG57gAVAcbJGiDDqWxHSv38YrQs6xM2rmEjXGfQz8bQy46o7Kf/7BkU7tWvabbS6QAD
 KASyPNVzv9LdyG8YoNlQGThPsbjO+O52JvDEXTm57ZdctxVacy+WDHhqJ46IvWRLg5SthqG
 x73Ed3wPAN9MQuxm5sBhA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:/NJsVFszgSo=;/f0ifAp96Qta5fe/8Ku/iaQXWT2
 ZykaZEN4NPoX19dXxyuEXfRwzpDY1psY18adInu7wENZT8br7fQWCMtcjvwvYGpk0SLgUH9kN
 /pXLgtu9vSBlDn8R0j3GpcSxGuqX64cDGFbd8jXn5nOfWwfMLmlIDpW+WtPtJtrnIHtQdcXB7
 O5HBDfKbnVFOwamZjuBFVnBbTwF17StXQjnsb22Iuv1B0cZ0az9AqDFs4HJBGiwZeqGDxEcQT
 by0SjBR56rFLb4Kp1xL+rLgRa756bQDsChsCt68jiqNkjdHMlRFmkBb6ZXBJ68LA6ZsLB5o+A
 yQFVUdheI3140TMQf6Xlg1U984e95rN734RUdKpoOsPfRZMkdCd4rnM50F9g9Q8djwqbdQ5/3
 iZRhWgDWivnVaqJK0Os9tPjsnu86lkh9RTKUIwwVfeHBnHbc/2kqpvxz48MbAukpQ4Km0fH7k
 E1GFq8IFBhZCxHJ1T5vaXfEYwqFev5I81dbVnbxGeIhS9xPRk407Vx+hCE552kL4LxwmTJwVC
 IuLJK9twdCqvmhSJHarElCDDJHGwrxOw29vpkpGRD78+RzapCMqMRVpvxCgCw81HWhpvxU77k
 AUn9EA9YEgqOgSiqcuP+pt9mRIjC+vKqDVZixfoIL5N1oG9b9E62oBHPPFJCm0btT+4do3cyw
 aQzPVoocn/XJgclsCxHUuUlYzZSz0gxThjaaEXpHqJKkc233OXlY6ZNrxfZQyeQnTpM0N6JnR
 ITzYbTM2+BAjNSkv8YamN6okCnROAUiK/ES64UiN2svl7eHAtCLArL7dscIhvGUET7z6Xmdp7
 XtnWgdZP3say6R1gTpZ8eOmh1xTlL7ZU/GsK3UINe6utoDn8cTddZE930gDkZ7KMTr+mIsEfl
 LY6TwB3yDUz61JdruE0eN4vJ+xFea7l6N+Pv/QRopd36oXlvWrPSm/2mtuxy2oeuUa3avx2Rq
 12UX7OyfHC8FHVmg5pVNpkhWU+JY2t4ssj9NT1XuEanggHYY/IaaDTIjScUsvzIT3L8CZ/zRm
 vkyiK7T6RUCceSSh/K4neJG4SGAI4KFb9rwf9FnL3J+EWxm28Whu7yxGo8oVSpK4ql1Dx/rEa
 uDdeX4A/bYNMX6tExYutqrWqsXBeRvwmpq2JVqSaSlXXu36jRmriihOb60/7zhlwVdy+d90ko
 cabk5VXfl3NCrCzdnYCDOVVqP14K1NLurYYFNgEmpBEPcgcezUewqx/7EnHCmIpjfgQWMPJVA
 /u2cz71BnmYUxD2IzEJy3vgtp6eqaiKRPjsvARxW1/oIuHJc+vgnzLMo4FfPoM0JhlT0T1G8/
 92E7b+qbZ3pW/uHOGCgdtWI1Lgdu+xyFaElidbZh8DfEOfLpeUypIxnevhGUGwq7JYkf4GBif
 zjV6yXP3xUPtKxM/Zz8s08luICNbwZQcQRc4jwCHFYrgmRvzNUlcVzK6/hpB682eAMjV4RVGp
 cdjDKlPgZWe24ReshHHkY/MyHaXA=
Subject: Re: [Cake] [NetDev-People] 0x19: Talk,
 mq-cake: Scaling software rate limiting across CPU cores
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
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgVG9rZSwKCgo+IE9uIDEwLiBGZWIgMjAyNSwgYXQgMTE6MzUsIFRva2UgSMO4aWxhbmQtSsO4
cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBTZWJhc3RpYW4gTW9lbGxlciA8
bW9lbGxlcjBAZ214LmRlPiB3cml0ZXM6Cj4gCj4+IFRoYXQgc291bmRzIG1vc3QgZXhjZWxsZW50
Li4uCj4+IAo+PiBUaGlzIGFsc28gbWVhbnMgdGhhdCBub3cgd2UgbmVlZCBjaGVhcCByb3V0ZXIg
aGFyZHdhcmUgd2l0aCA+IDIgTklDCj4+IHF1ZXVlcyBhbmQgPiAyIENQVXMgOykgKHdpdGggaW5n
cmVzcyBhbmQgZWdyZXNzIHNoYXBpbmcgdGhlIGN1cnJlbnQKPj4gc3RhdGUgaXMgdGhhdCAyIENQ
VXMgY2FuIGJlIHV0aWxpc2VkKS4KPiAKPiBXZWxsLCBldmVuIGlmIHRoZXJlIGFyZSBvbmx5IDIg
Q1BVcywgdGhlIE1RIHZlcnNpb24gY2FuIHV0aWxpc2UgYm90aCBvZgo+IHRob3NlIGluIG9uZSBk
aXJlY3Rpb24sIHdoaWNoIGhlbHBzIGZvciBhc3ltbWV0cmljYWwgdHJhZmZpYyA6KQoKRmFpciBw
b2ludCwgSSB3YXMgdGhpbmtpbmcgYmkgZGlyZWN0aW9uYWwgc2F0dXJhdGluZyB0cmFmZmljIG9u
IGEgc3ltbWV0cmljIGxpbmssIHdoaWNoIEkgZ3Vlc3MgaXMgZmFyIGZyb20gdGhlIHR5cGljYWwg
dXNlIGNhc2UgOykKCj4gCj4+IEkgd29uZGVyLCBkb2VzIHRoaXMgd29yayBmb3IgSUZCcyBhcyB3
ZWxsIG9yIG9ubHkgZm9yIHJlYWwgaGFyZHdhcmUKPj4gTklDIHF1ZXVlcz8KPiAKPiBZdXAsIHlv
dSBjYW4gc3BlY2lmeSB0aGUgbnVtYmVyIG9mIFRYIHF1ZXVlcyBvbiBhbiBpZmIgaW50ZXJmYWNl
IHdoZW4KPiBjcmVhdGluZyBpdCAoaXAgbGluayBhZGQgbnVtdHhxdWV1ZXMgMiB0eXBlIGlmYiku
CgpHcmVhdCwgc28gdGhpcyB3aWxsIHRoZW4gd29yayBldmVuIGlmIHRoZSB0cnVlIE5JQyBoYXJk
d2FyZSBpcyBub3QgbXVsdGktcXVldWUgY2FwYWJsZSBvciBkb2VzIG51bXR4cXVldWVzIG5lZWQg
dG8gYmUgPD0gdHJ1ZSBudW1iZXIgb2YgTklDIHF1ZXVlcz8KCj4gCj4gLVRva2UKPiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK
