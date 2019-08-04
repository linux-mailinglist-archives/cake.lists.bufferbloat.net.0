Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id B02B980B6B
	for <lists+cake@lfdr.de>; Sun,  4 Aug 2019 17:19:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3F4F53CB3A;
	Sun,  4 Aug 2019 11:19:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1564931965;
	bh=ENVjXaJrttx8tO3lqfEFgG+z7mKS26SJ/lpwvMgNHC4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VAktwo0Nb8mXxJLBif/Pl+otAMTlgUNf9HYF3GT7IJ4U6qo+bvOtEkWgDuXikFrmI
	 Ibu5KdjglfgNKws7NLgHDx88lkwQ0JbzC3BUPy/j43vGvRJcCLDzUtiaLc+s0H1zTk
	 s7SmSqt5+rxK+CeYUWkEeVEDeG5Nl3pokxLLpb53LBjheEOKDTXxGVx+jDwQVnVhQR
	 c0HuCQgRYqF+NqSzJi0viUGEqNIgHjaD5tlFDHyT88gcmaF2CJgM+G9GW3zeYyNOir
	 SlpSIBPAmNNJ6e9Ie9rRhEGVCVZBxzNlp+U+yVcLKkDMxkbIlRphrSk1/q8AHQDUka
	 xYjzcoIiV1L7A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1B7E03CB36
 for <cake@lists.bufferbloat.net>; Sun,  4 Aug 2019 11:19:24 -0400 (EDT)
Received: by mail-io1-xd32.google.com with SMTP id f4so162391555ioh.6
 for <cake@lists.bufferbloat.net>; Sun, 04 Aug 2019 08:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=E37ii08asWAXU4pBjVXjZWzjM5xcV84/vRtAl3Mt5Nc=;
 b=WBbsUB6vTR6fvPhHBWvr9/jLI84ATU35MNy7UQ8PulpCv/SjQoofk61BP7qOLn4fS5
 xuI23oGfDR3vEl7wa8I5NuQYrAzCY38LAjryl/l+rJNs5jSVGS6B3+bcLlbM8R5apILg
 LL000cj94/OmkbpUFYuZx8tTjt2agOX0RsdxHnqmaFpZPg243LaMX6xUhZ95FJ52kh2c
 4Dri1MJSI+/ZVzFE5iLAN61/zIgND9lRdjU1jJFH9QF5nbOPjSzfV9VceWV9UD5V1ZT+
 N2vl2WZqukR3S1H8lOrNUEwvr3Wsr8TICwfsYeRY+zHMLR6O2r1nAvs1pdrIcI36xcfA
 uDYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=E37ii08asWAXU4pBjVXjZWzjM5xcV84/vRtAl3Mt5Nc=;
 b=SYdZ77dYnQIDFrghGRiLf28nDP0S66BBeabn6G7m/SGKFlPjplUogmfgzZa1nyoSl2
 0HJIbET3JPoViESRwEpuRdATVTYvZ6fBF4d9bnY6FbYQFNHjEtgxsiAp5+K1BI+R5/tQ
 bdrbQwU042HGhqsblcesAn2bZjshSYMMKRVtmHYcbYx89JIwDMed3OVdUTd9YFr6gYgK
 94iyJcWI+rbPyfkIV/XIZxjk9EBlCQ2NgJPfOLBLmJpDHVE5vu/zamLxc9UrKItn6y1o
 G+WL8I0GT4D7Q7PIfQj36MZ0hkhmNY3K5AQ83GpSouJ+/Io17ZiDLIS0yGyY+3NuqpeS
 DZxA==
X-Gm-Message-State: APjAAAW4aX98xhvl8R7sCHTKv1pGs1objGIeYo7hdW4HI3lk1miWH3ek
 T/BbMKddWp4Qwk3vYa+bd1dZodUdQNu1OdKbp+z7Vg==
X-Google-Smtp-Source: APXvYqxqDWhyx5rPgmYxk2hgWanfJp9u97wvi6IMiB4rZI3yM3w7vWv7iqzlWdfBOOpvJiPoFjSA6YHu3fNY9GRWGEw=
X-Received: by 2002:a02:b713:: with SMTP id g19mr148886352jam.77.1564931962807; 
 Sun, 04 Aug 2019 08:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <1564931351-1036-1-git-send-email-john.hurley@netronome.com>
 <1564931351-1036-5-git-send-email-john.hurley@netronome.com>
In-Reply-To: <1564931351-1036-5-git-send-email-john.hurley@netronome.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 4 Aug 2019 08:19:11 -0700
Message-ID: <CAA93jw6BYQxPjTmEOrv0WSOKm9bYnrtj-pwLxneDL0EjTASw5A@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [PATCH net-next 04/10] net: sched: add ingress mirred
 action to hardware IR
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

LS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KRnJvbTogSm9obiBIdXJsZXkg
PGpvaG4uaHVybGV5QG5ldHJvbm9tZS5jb20+CkRhdGU6IFN1biwgQXVnIDQsIDIwMTkgYXQgODox
MCBBTQpTdWJqZWN0OiBbUEFUQ0ggbmV0LW5leHQgMDQvMTBdIG5ldDogc2NoZWQ6IGFkZCBpbmdy
ZXNzIG1pcnJlZCBhY3Rpb24KdG8gaGFyZHdhcmUgSVIKVG86IDxuZXRkZXZAdmdlci5rZXJuZWwu
b3JnPgpDYzogPGRhdmVtQGRhdmVtbG9mdC5uZXQ+LCA8c2ltb24uaG9ybWFuQG5ldHJvbm9tZS5j
b20+LAo8amFrdWIua2ljaW5za2lAbmV0cm9ub21lLmNvbT4sIDxvc3MtZHJpdmVyc0BuZXRyb25v
bWUuY29tPiwgSm9obgpIdXJsZXkgPGpvaG4uaHVybGV5QG5ldHJvbm9tZS5jb20+CgoKVEMgbWly
cmVkIGFjdGlvbnMgKHJlZGlyZWN0IGFuZCBtaXJyZWQpIGNhbiBzZW5kIHRvIGVncmVzcyBvciBp
bmdyZXNzIG9mIGEKZGV2aWNlLiBDdXJyZW50bHkgb25seSBlZ3Jlc3MgaXMgdXNlZCBmb3IgaHcg
b2ZmbG9hZCBydWxlcy4KCk1vZGlmeSB0aGUgaW50ZXJtZWRpYXRlIHJlcHJlc2VudGF0aW9uIGZv
ciBodyBvZmZsb2FkIHRvIGluY2x1ZGUgbWlycmVkCmFjdGlvbnMgdGhhdCBnbyB0byBpbmdyZXNz
LiBUaGlzIGdpdmVzIGRyaXZlcnMgYWNjZXNzIHRvIHN1Y2ggcnVsZXMgYW5kCmNhbiBkZWNpZGUg
d2hldGhlciBvciBub3QgdG8gb2ZmbG9hZCB0aGVtLgoKU2lnbmVkLW9mZi1ieTogSm9obiBIdXJs
ZXkgPGpvaG4uaHVybGV5QG5ldHJvbm9tZS5jb20+ClJldmlld2VkLWJ5OiBTaW1vbiBIb3JtYW4g
PHNpbW9uLmhvcm1hbkBuZXRyb25vbWUuY29tPgpSZXZpZXdlZC1ieTogSmFrdWIgS2ljaW5za2kg
PGpha3ViLmtpY2luc2tpQG5ldHJvbm9tZS5jb20+Ci0tLQogaW5jbHVkZS9uZXQvZmxvd19vZmZs
b2FkLmggfCAyICsrCiBuZXQvc2NoZWQvY2xzX2FwaS5jICAgICAgICB8IDYgKysrKysrCiAyIGZp
bGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbmV0L2Zs
b3dfb2ZmbG9hZC5oIGIvaW5jbHVkZS9uZXQvZmxvd19vZmZsb2FkLmgKaW5kZXggMDRjMjlmNS4u
ZDNiMTJiYyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9uZXQvZmxvd19vZmZsb2FkLmgKKysrIGIvaW5j
bHVkZS9uZXQvZmxvd19vZmZsb2FkLmgKQEAgLTExNyw2ICsxMTcsOCBAQCBlbnVtIGZsb3dfYWN0
aW9uX2lkIHsKICAgICAgICBGTE9XX0FDVElPTl9HT1RPLAogICAgICAgIEZMT1dfQUNUSU9OX1JF
RElSRUNULAogICAgICAgIEZMT1dfQUNUSU9OX01JUlJFRCwKKyAgICAgICBGTE9XX0FDVElPTl9S
RURJUkVDVF9JTkdSRVNTLAorICAgICAgIEZMT1dfQUNUSU9OX01JUlJFRF9JTkdSRVNTLAogICAg
ICAgIEZMT1dfQUNUSU9OX1ZMQU5fUFVTSCwKICAgICAgICBGTE9XX0FDVElPTl9WTEFOX1BPUCwK
ICAgICAgICBGTE9XX0FDVElPTl9WTEFOX01BTkdMRSwKZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9j
bHNfYXBpLmMgYi9uZXQvc2NoZWQvY2xzX2FwaS5jCmluZGV4IGFlNzNkMzcuLjlkODVkMzIgMTAw
NjQ0Ci0tLSBhL25ldC9zY2hlZC9jbHNfYXBpLmMKKysrIGIvbmV0L3NjaGVkL2Nsc19hcGkuYwpA
QCAtMzIwNSw2ICszMjA1LDEyIEBAIGludCB0Y19zZXR1cF9mbG93X2FjdGlvbihzdHJ1Y3QgZmxv
d19hY3Rpb24gKmZsb3dfYWN0aW9uLAogICAgICAgICAgICAgICAgfSBlbHNlIGlmIChpc190Y2Zf
bWlycmVkX2VncmVzc19taXJyb3IoYWN0KSkgewogICAgICAgICAgICAgICAgICAgICAgICBlbnRy
eS0+aWQgPSBGTE9XX0FDVElPTl9NSVJSRUQ7CiAgICAgICAgICAgICAgICAgICAgICAgIGVudHJ5
LT5kZXYgPSB0Y2ZfbWlycmVkX2RldihhY3QpOworICAgICAgICAgICAgICAgfSBlbHNlIGlmIChp
c190Y2ZfbWlycmVkX2luZ3Jlc3NfcmVkaXJlY3QoYWN0KSkgeworICAgICAgICAgICAgICAgICAg
ICAgICBlbnRyeS0+aWQgPSBGTE9XX0FDVElPTl9SRURJUkVDVF9JTkdSRVNTOworICAgICAgICAg
ICAgICAgICAgICAgICBlbnRyeS0+ZGV2ID0gdGNmX21pcnJlZF9kZXYoYWN0KTsKKyAgICAgICAg
ICAgICAgIH0gZWxzZSBpZiAoaXNfdGNmX21pcnJlZF9pbmdyZXNzX21pcnJvcihhY3QpKSB7Cisg
ICAgICAgICAgICAgICAgICAgICAgIGVudHJ5LT5pZCA9IEZMT1dfQUNUSU9OX01JUlJFRF9JTkdS
RVNTOworICAgICAgICAgICAgICAgICAgICAgICBlbnRyeS0+ZGV2ID0gdGNmX21pcnJlZF9kZXYo
YWN0KTsKICAgICAgICAgICAgICAgIH0gZWxzZSBpZiAoaXNfdGNmX3ZsYW4oYWN0KSkgewogICAg
ICAgICAgICAgICAgICAgICAgICBzd2l0Y2ggKHRjZl92bGFuX2FjdGlvbihhY3QpKSB7CiAgICAg
ICAgICAgICAgICAgICAgICAgIGNhc2UgVENBX1ZMQU5fQUNUX1BVU0g6Ci0tCjIuNy40CgoKCi0t
IAoKRGF2ZSBUw6RodApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20K
VGVsOiAxLTgzMS0yMDUtOTc0MApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
