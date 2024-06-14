Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2C4908AA0
	for <lists+cake@lfdr.de>; Fri, 14 Jun 2024 13:05:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 279303CB47;
	Fri, 14 Jun 2024 07:05:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1718363150;
	bh=UFkHbl1rHJf4hsHpY+IMhq2zwFsNdKeJCTL7E3Gamt0=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=fCKm9RJyw6PVTgTm8X6ewkOxTbKofsMNfDoj4Frbqh69gv9fXvHJVJpudYzuMCnYw
	 4nEQ8zK1Pvvl5BAnT47aMYCeXnOIENYIeuaNmc0eIJ/qHydUDRj09pn1FeHVWrYMkp
	 Q9S7sHcwA9yig3vHxTF0rCsnFycjjQ91F4ej/TB9nvQfIpKblBpLdZ/g3c5spd1SB1
	 ks/yyNWYgTeHLjuGrakhkgXVuECTpdSop78FxV4i5h/nGULydIDmREeI7+Y8w3mIW0
	 5fmFCZ9eMrOAwv4E4iFxz3koKF3SQakhBR38PXkuHuPAYFQ0sAtr1xpRlAeSUe6KCH
	 DfHjKv45IZO1A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A9BED3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 14 Jun 2024 07:05:48 -0400 (EDT)
Received: by mail-lj1-x22d.google.com with SMTP id
 38308e7fff4ca-2ebed33cb65so21707221fa.2
 for <cake@lists.bufferbloat.net>; Fri, 14 Jun 2024 04:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718363146; x=1718967946; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cPSx+MuYosdzUxm7j27ltWkhN1d9LVaRrO3YKzjFBik=;
 b=Cx1z2E8SDZnBGIYatqLU6cdtPd8n0gQsTBFLsszuAGypQvBdxmPeO531pRMWxX9C01
 o+tgBfms70mD1SoNMDkycFQq4vTpBhRX9UUeCE54CTeWn6li8JWdzVdzdWRXkwPQ1Cur
 EY2rIRmKmcmeo35Zrze8Lkrk081NKkellOLt16/OODxJhohnYT2DWk+L0Z2VLsXpV8LT
 a6J9SgN85esE+W6TSbCDWhtmVY3Am4hUTE33arJ1M6sLz/q6oFezSO5S1jX9yAO2bFJn
 BRhpOi6Z2nzUka+HWLCCx5KQbf9Li0Ru9g2ucNBv/0w/90+wKuN5EJIEBMmkXS1kXy9c
 6uEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718363146; x=1718967946;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cPSx+MuYosdzUxm7j27ltWkhN1d9LVaRrO3YKzjFBik=;
 b=lihIBQ6Tj/8hHq0DNH8LJy6SweFmTFalA0TybJTu6OZXGTnSitaCrb7A0gH+heawpH
 IxhddesLoOhnXf7ozGdUJ1zWZYHe13bkzvVS2oyJz02oGsFBDjMkAFjYsWZCJXPHYk4J
 yrZ+dK2zUskBO/YVlYPSKIUmBRcljItKmfuJyGiSR/OwnBw9ZdSIAnd8w4tB1zivjRZ0
 KJMREfsoEOrwdIjP+yn3l95l2NbLld0D0IEopcmhnPst0okhJd7lbGyJWe2fAlww1Ek5
 iKHgeU83HTLmvO4YdJ9TUoEIcx4TcXD5uqmItK7b4orjeU6vkUMGrlq5FlMIjycmbxyD
 zE9Q==
X-Gm-Message-State: AOJu0YzstagOKyw2tREM0iZp3rbOo0lzkqGeM8WSDeGhVrZwrvY460ll
 m04DJiR0JRR78yhiMGB2unmNc8Hv+9Y5lqrtnOAt5H/pPi29ozyt
X-Google-Smtp-Source: AGHT+IF8e0+TpZ4cwoGpS8oIIQBjafBhZTYSU8H1mlxRtTGOrsCmdPNYu8oV+yrNrt6B8jaTT+vR2Q==
X-Received: by 2002:a2e:a98a:0:b0:2ec:f68:51da with SMTP id
 38308e7fff4ca-2ec0f685608mr20836071fa.10.1718363145992; 
 Fri, 14 Jun 2024 04:05:45 -0700 (PDT)
Received: from smtpclient.apple (37-136-162-179.rev.dnainternet.fi.
 [37.136.162.179]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-2ec05c05f8asm5224951fa.41.2024.06.14.04.05.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2024 04:05:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
In-Reply-To: <CAA93jw6yW0rkzfGhsrjHP3jDk1q63_GGqwEFYUy+6WN8HV7G_A@mail.gmail.com>
Date: Fri, 14 Jun 2024 14:05:43 +0300
Message-Id: <2B93218F-F3EF-4A79-9061-A1A3AB922CE6@gmail.com>
References: <CAA93jw6yW0rkzfGhsrjHP3jDk1q63_GGqwEFYUy+6WN8HV7G_A@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] cobalt, compared
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
From: Jonathan Morton via Cake <cake@lists.bufferbloat.net>
Reply-To: Jonathan Morton <chromatix99@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxNCBKdW4sIDIwMjQsIGF0IDI6NDAgYW0sIERhdmUgVGFodCB2aWEgQ2FrZSA8Y2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+IGh0dHBzOi8vd3d3LnR1LWlsbWVuYXUu
ZGUvZmlsZWFkbWluL0JlcmVpY2hlL0lBL3ZzYnMvUHVibGlrYXRpb25lbi8yMDI0L1NTS19OT01T
MjRfQWRhcHRpdmVBUU1fQXV0aG9ycy12ZXJzaW9uLnBkZgoKSSBkb24ndCB1bmRlcnN0YW5kIHRo
ZWlyIHRlc3QgbWV0aG9kb2xvZ3kuICBJIG1lYW4gdGhhdCBsaXRlcmFsbHkuCgpUaGVpciByZXN1
bHRzIGluZGljYXRlIHF1ZXVlIGRlbGF5cyBpbiB0aGUgcmVnaW9uIG9mIG9uZSB3aG9sZSBzZWNv
bmQuICBUaGlzIGlzIHdpbGRseSBkaWZmZXJlbnQgZnJvbSB0aGUgdGFyZ2V0IGRlbGF5cyBvZiBh
bnkgb2YgdGhlIEFRTXMgdGVzdGVkLiAgSW4gZmFjdCwgdGhlaXIgcmVzdWx0cyBmb3IgQ09CQUxU
IGFyZSBhYm92ZSB0aGUgdHJpZ2dlciBmb3IgQkxVRSBhY3Rpdml0eSAod2hpY2ggdGhleSBhbHNv
IGhlbHBmdWxseSBsaXN0ZWQgaW4gdGhlaXIgY29uZmlndXJhdGlvbiB0YWJsZSkuICBPbmUgb2J2
aW91cyBjb25jbHVzaW9uIGlzIHRoYXQgQ09CQUxUJ3MgbG93ZXIgcXVldWUgZGVsYXlzIGFuZCBo
aWdoZXIgbG9zcyByYXRlcyBpbiB0aGVpciByZXN1bHRzIGFyZSBwcmVjaXNlbHkgZHVlIHRvIHJl
bHlpbmcgb24gdGhlIEJMVUUgY29tcG9uZW50LiAgQnV0IHRoYXQgaXMgbW9zdCBjZXJ0YWlubHkg
bm90IHRoZSBpbnRlbmRlZCBvcGVyYXRpbmcgcmVnaW1lIGZvciBDT0JBTFQgLSBCTFVFIGlzIHBy
b3ZpZGVkIGFzIGEgZmFpbHNhZmUsIG5vdCBhcyBhIHByaW1hcnkgY29uZ2VzdGlvbiBzaWduYWxs
aW5nIG1lY2hhbmlzbS4KClRoZXkgc3RhdGUgYSBsaW5rIHJhdGUgb2YgMkdicHMsIGFuZCBhIHZh
cmlldHkgb2YgZmxvdyByYXRlcywgdGhlIGhpZ2hlc3Qgb2Ygd2hpY2ggaXMgMTBNYnBzLiAgRXZl
biBpZiB3ZSBtdWx0aXBseSB0aGUgbGF0dGVyIGJ5IHRoZSBudW1iZXIgb2YgY2xpZW50cyAoMTAw
KSwgdGhlIDJHYnBzIGxpbmsgaXMgbm90IHNhdHVyYXRlZC4gIElmIHRoZXJlJ3MgYSBzZXBhcmF0
ZSBmbG93IGJldHdlZW4gZWFjaCBjbGllbnQtc2VydmVyIENhcnRlc2lhbiBwcm9kdWN0LCBhbmQg
dGhlIGNsaWVudHMgYXJlIGVhY2ggbGltaXRlZCB0byBhIDEwTWJwcyBsaW5rIHdpdGggaXRzIG93
biBBUU0gaW5zdGFuY2UsIHRoZW4gd2Ugc2hvdWxkIGV4cGVjdCBBUU0gYWN0aXZpdHkgdG8gYmUg
Y2FwYWJsZSBvZiBrZWVwaW5nIHRoZSBxdWV1ZSBkZWxheSBkb3duIHRvIGFib3V0IDIwbXMgKDV4
IGEgc21hbGwgbnVtYmVyIG9mIE1UVXMpLCB3aGljaCBpcyA1MHggYmV0dGVyIHRoYW4gdGhlaXIg
dHlwaWNhbCByZXBvcnRlZCByZXN1bHRzLgoKSSBjYW4gb25seSBjb25jbHVkZSB0aGF0LCBmb3Ig
d2hhdGV2ZXIgcmVhc29uLCB0aGV5IGhhdmUgY29uc3RydWN0ZWQgYSB0cmFmZmljIHNjZW5hcmlv
ICh0aGUgZGV0YWlscyBvZiB3aGljaCBhcmUgbm90IGFkZXF1YXRlbHkgcmVwb3J0ZWQgaW4gdGhl
IHBhcGVyKSB3aGljaCBpbmR1Y2VzIGFuIGV4dHJlbWUgbGV2ZWwgb2YgY29uZ2VzdGlvbiwgd2hp
Y2ggb2YgY291cnNlIHRoZSBjb252ZW50aW9uYWwgQVFNcyBoYXZlIHNvbWUgdHJvdWJsZSB3aXRo
IGhhbmRsaW5nIChidXQgQ09CQUxUIGRvZXMgYmV0dGVyIG9uLCBkdWUgdG8gQkxVRSBhY3Rpdml0
eSkuICBUaGV5IHRoZW4gaW50cm9kdWNlIHRoZWlyIG93biBBUU1zIHRvIHRoaXMgc2NlbmFyaW8s
IGFuZCByZXBvcnQgdGhhdCB0aGV5IGRvIGJldHRlciBvbiBhIGNvdXBsZSBvZiBtZXRyaWNzIChi
dXQgYXJlIHN0aWxsIHZlcnkgYmFkIG9uIHRoZSBvdGhlcnMpLgoKT3ZlcmFsbCwgdGhpcyBwYXBl
ciBkb2VzIG5vdCBwcm92aWRlIGFueSBpbmZvcm1hdGlvbiBvZiBpbnRlcmVzdC4KCiAtIEpvbmF0
aGFuIE1vcnRvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
