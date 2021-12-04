Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFE5468107
	for <lists+cake@lfdr.de>; Sat,  4 Dec 2021 01:09:06 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A60F63CB38;
	Fri,  3 Dec 2021 19:09:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1638576544;
	bh=nfUo+zskjf2KDWkf4DAoD1YNdfCeuN+Yq+6zYReRGSA=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HDthD33f2nbvnG52FAaHLorNnh90YHc8vDEx3rpP0/HEh61RC5DQ/mcSB3YU3EsAQ
	 i6FjKVKuGRe314VacXnR0pqOmGInU7G1tl3tw6SaRaU15ADtdn398RLXZzHdPFIo66
	 p0apL5vsTdOXwGpEN9yCpxB9yIkJuVqW6zOhHFxghp440y747D23V3yHrY2PGEI2KJ
	 3OzwHPysqN6cumaktVfUP+ZHCMBRaJngnevFaUqh+Pn9OmxLXAVJPItChJ5z4g+PiH
	 Qg/A5k5/LLGwAnKxZ58LIdeZOrRUvTs0w3UOr5JgnIPDTnESAwiRVlZ55L4TEIPs+4
	 uMCzzV8V83cIA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9438F3B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Dec 2021 19:09:03 -0500 (EST)
Received: by mail-lf1-x12d.google.com with SMTP id b1so10148456lfs.13
 for <cake@lists.bufferbloat.net>; Fri, 03 Dec 2021 16:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+XIdWIzNi9VNN4YlDKUdjy413A8Qw6+IAzXui6lbT78=;
 b=VTG7HogPcUaiUHciGAaYi/bQbwMBV8oNE0TnS1x4a4rwQdFmg01ID/G2H6rL89ZiCr
 DejAsCfdxLbKJkR/CMy7T50EMrviNLBlFYyaWrvGnQwLVEIcljmglpUiBwH/T5wvh/6l
 oSPnqNuQtwCg2dmxgGAK2qdXmG2wEsWjLmVoHrKKkR14xlwAQYtJE1xHw5PzOQSg6Vzd
 5pikE90QudBTIF8MwpO/0IXyTK2C9hAgJnOP9cpnLYIHWj4ExnaLdulN/Ru47GTMn3BM
 JJ7HEu+KZu9+HTJBIeGFzyvnRKqmK18LLBHcAK9eMqoYaIjXR9l+pOj8h2/mLOb87OEl
 GHhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+XIdWIzNi9VNN4YlDKUdjy413A8Qw6+IAzXui6lbT78=;
 b=2VT8HTRdqK6/0IYanG7yfIbZuH6na5OTQdHV0Sjuls2uNJn2+4eHtyDATe2uI9uqqk
 G+6aLV/q/jlzFOLTdSAMeBv6u1qBJp6BGPQLibvOKiQS4MFRzfHwhXX2vRzPmzOpQIMV
 QfSwWwtvT6sngOktMHzwYdhogObxH8RBFEsrsmMz6zAiy/Hd7xq+zqiqBM9EsxS/RZAW
 nt9jAeZbF84qXNHxTdtQ/TFOL5R6wxJU9QmoYUAyFacy0bIMBKXzZOPfCY8EFQcFIs87
 b+uT7Ng6Uw4A9N1a75cdRaS6m3zmbFvbrgNMahDVs7FNW9x2IUtrBRqNOe1hzrri44vg
 6hag==
X-Gm-Message-State: AOAM531XxVQtzL/IIQp6hRFKBhP7UAGINF7fEo5BSNczUEY7R+iFW71s
 xkchs62K1W1arbQ6fLMa75A=
X-Google-Smtp-Source: ABdhPJxHDioPcaKF45JrzeXRC6DtnolLaX/hOUrenLS4+ict7HR17XgrIbDKUmIbMGKaFigce2NF5Q==
X-Received: by 2002:a05:6512:aca:: with SMTP id
 n10mr21142127lfu.265.1638576542182; 
 Fri, 03 Dec 2021 16:09:02 -0800 (PST)
Received: from smtpclient.apple (188-67-32-84.bb.dnainternet.fi.
 [188.67.32.84])
 by smtp.gmail.com with ESMTPSA id k13sm542505lfg.306.2021.12.03.16.09.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Dec 2021 16:09:01 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw5MbJwUQf3=N6xsv7dn7V+1dKeX5QR93+f7erHup+TUQg@mail.gmail.com>
Date: Sat, 4 Dec 2021 02:09:00 +0200
Message-Id: <0A6AB0B7-E010-42E3-BAEE-FCBFA5995117@gmail.com>
References: <CAA93jw5MbJwUQf3=N6xsv7dn7V+1dKeX5QR93+f7erHup+TUQg@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] Understanding the Achieved Rate Multiplication Effect in
 FlowQueue-based AQM Bottleneck
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
Cc: jonathan.kua@deakin.edu.au, Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA0IERlYywgMjAyMSwgYXQgMTI6MjcgYW0sIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWls
LmNvbT4gd3JvdGU6Cj4gCj4gaHR0cHM6Ly9qb25hdGhhbmt1YS5naXRodWIuaW8vcHJlcHJpbnRz
L2prdWEtaWVlZWxjbjIwMjFfdW5kZXJzdGFuZGluZ19hcl9wcmVwcmludC0yMGp1bDIwMjEucGRm
Cj4gCj4gSSB3b3VsZCBsb3ZlIGl0IGlmIHNvbWVob3cgdGhlIG1lYXN1cmVkIGVmZmVjdHMgb2Yg
Y2h1bmtsZXRzIGFnYWluc3QgY2FrZSdzIHBlci1ob3N0L3BlciBmbG93IGZxIHdhcyBleGFtaW5l
ZCBvbmUgZGF5LgoKSSBoYXZlbid0IGFjdHVhbGx5IG1lYXN1cmVkIGl0LCBidXQgYmFzZWQgb24g
d2hhdCB0aGUgYWJvdmUgcGFwZXIgc2F5cywgSSBjYW4gbWFrZSBzb21lIGZpcm0gcHJlZGljdGlv
bnM6CgoxOiBXaGVuIGNvbXBldGluZyBhZ2FpbnN0IHRyYWZmaWMgdG8gdGhlIHNhbWUgbG9jYWwg
aG9zdCwgdGhlIHBlcmZvcm1hbmNlIGVmZmVjdHMgdGhleSBkZXNjcmliZSB3aWxsIGJlIHByZXNl
bnQuCgoyOiBXaGVuIGNvbXBldGluZyBhZ2FpbnN0IHRyYWZmaWMgdG8gYSBkaWZmZXJlbnQgbG9j
YWwtbmV0d29yayBob3N0LCB0aGUgcGVyZm9ybWFuY2UgZWZmZWN0cyB0aGV5IGRlc2NyaWJlIHdp
bGwgYmUgYXR0ZW51YXRlZCBvciBldmVuIGVudGlyZWx5IGFic2VudC4KCjM6IFRoZXkgbm90ZWQg
b25lIG9yIHR3byBjYXNlcyBvZiBvYnNlcnZhYmxlIGVmZmVjdHMgb2YgaGFzaCBjb2xsaXNpb25z
IGluIHRoZWlyIHRlc3RzIHdpdGggRlEtQ29kZWwuICBUaGVzZSB3aWxsIGJlIGdyZWF0bHkgcmVk
dWNlZCBpbiBwcmV2YWxlbmNlIHdpdGggQ2FrZSwgZHVlIHRvIHRoZSBzZXQtYXNzb2NpYXRpdmUg
aGFzaCBmdW5jdGlvbiB3aGljaCBzcGVjaWZpY2FsbHkgYWRkcmVzc2VzIHRoYXQgcGhlbm9tZW5v
bi4KCiAtIEpvbmF0aGFuIE1vcnRvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
