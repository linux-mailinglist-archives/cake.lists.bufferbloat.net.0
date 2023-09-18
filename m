Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A46EE7A5613
	for <lists+cake@lfdr.de>; Tue, 19 Sep 2023 01:08:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BE9C73CB49;
	Mon, 18 Sep 2023 19:08:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695078519;
	bh=SVLmcSnz+WAgWJJUd6r8sWwHqh8EwUFM/8Zp+vua8cA=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=KKx8d492sn2ItQehdqPRyWTbKOSNhVz4opp7r41VY41EeVQyVyvEDVX/faowef0ia
	 7S4riBK20P0x0lefYXtOcFFI+B2w+2X5D3ZYB5EQ1uAoeePxUQiYTRXd56eyb2c3RY
	 aBGxQSZsMfW56Dx9E46Yd6wVq9/0ftykrrs0q8v2h2ciDFVc1mE+RDnKhwYd9wHflv
	 m1cJScoY44KyvC1YaKEG0Vgw9BVFZ7KG5IazjA5tih31BegdT+1C+LkICPfEZlIVww
	 LwnDr7j4udic3tdbtsazdy8q1nANwUaFlLPfpPHOtC+cFI1X+mt0QCSskWCAvtwEBG
	 NTXLBN/8+VkOw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C9F923B2A4
 for <cake@lists.bufferbloat.net>; Mon, 18 Sep 2023 19:08:38 -0400 (EDT)
Received: by mail-lj1-x236.google.com with SMTP id
 38308e7fff4ca-2c0179f9043so19073921fa.1
 for <cake@lists.bufferbloat.net>; Mon, 18 Sep 2023 16:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695078517; x=1695683317; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TXzRGlTJapFaPkik3rx96PMnkfUgQ13Q84P2plVzRSc=;
 b=dtuikpV05VoHNa4s2lNsJMzw4SEphtFEaX2VERKLNvY6sas/aYNiBqQTJvddp5ThOw
 4vHPT46C0NTLrZH4847afBQzepVM9g8DcIbWy1uaCI82qzBtrCdqBbEqaP/n375/a4ey
 UqwCo8y8YhUpwijva9BySPdMrbTYZ3Sd1MGez110dBLY1yBs5PwYJhLFOE+h0RMR7hbN
 bFsjZcAlXcTY9b+rFV0koVq+o0kDj8wP6Ppd7gRqvGgaBcd1d/6sgXHHQPQN528lRJoV
 T7jLYp2t1fsePkjV+VoEn6FD9NLvntMqBSzq5+4Hfd7m8qZdGNw8oq/96G3M0qmIr3e1
 g9Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695078517; x=1695683317;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TXzRGlTJapFaPkik3rx96PMnkfUgQ13Q84P2plVzRSc=;
 b=Jq2JaGGHZ/A97RVI5/E8uLagWxF0/b0X6J35cw3MqEzhcJ+3DNOBLJXDIkNFtMsm2G
 TOslkD/gj3b2EUFkTwo1/sA2zabxQ+tPkle2uyVeW3ABJSovUBE34+fe1bYvcRjMDxvm
 FR2o0a9jClho1mbJlSaft8NkkXVrAkpmJgnZU5xjZzge/shvjQVbC/yFZxJ2Jt/ARYir
 YJuQX32YBdjIJyq/vRW6JgEoUR281K7AaM567iSbuy5P6O+qptU9RM80yPnSMidC0xEz
 2MlcAcjt+0ZBw+TreqXSH1GUSg1ii8UpbMdZH3L7J1VLezN6Ul7nhFBKfaKoRbF4IONZ
 rQHg==
X-Gm-Message-State: AOJu0YzWqymHEX7unBZi+1/zujm8I2eHHGzkCOYU9zH4mxxyS+Qx6JHd
 Orrty0HLTXAOCLvrmRq65xfRjt7s7uY=
X-Google-Smtp-Source: AGHT+IH6E08etTrF1zjjlfIAJtYMMpUN7eWehUA8/W9xJpsSBlrGN6B0dZ8QyZLQIt7elEdlVJzOcg==
X-Received: by 2002:a05:651c:10c:b0:2bc:d5f1:b9cf with SMTP id
 a12-20020a05651c010c00b002bcd5f1b9cfmr8410347ljb.27.1695078517117; 
 Mon, 18 Sep 2023 16:08:37 -0700 (PDT)
Received: from smtpclient.apple (178-55-83-36.bb.dnainternet.fi.
 [178.55.83.36]) by smtp.gmail.com with ESMTPSA id
 u25-20020a2ea179000000b002b9e9a8532dsm2295624ljl.138.2023.09.18.16.08.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Sep 2023 16:08:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
In-Reply-To: <CANypexSy_uajdqOsEjsC7+nYeUz03V272SKR4af6PT7QtYMeSQ@mail.gmail.com>
Date: Tue, 19 Sep 2023 02:08:22 +0300
Message-Id: <E11A4B01-72A9-4565-A9DF-FDA8D3ACC0D0@gmail.com>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <115D8B11-D45F-4997-A048-8E3251E86625@gmail.com>
 <CANypexSy_uajdqOsEjsC7+nYeUz03V272SKR4af6PT7QtYMeSQ@mail.gmail.com>
To: dave seddon <dave.seddon.ca@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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

PiBPbiAxOSBTZXAsIDIwMjMsIGF0IDE6NTIgYW0sIGRhdmUgc2VkZG9uIDxkYXZlLnNlZGRvbi5j
YUBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IEknZCBsb3ZlIHRvIHVuZGVyc3RhbmQgdGhlIGRpZmZl
cmVuY2UgYmV0d2VlbiB0aGUgdGVzdHMgSSd2ZSBiZWVuIGRvaW5nIGFuZCB5b3VyIHRlc3RzLgo+
IAnigKIgSG93IG1hbnkgVENQIGZsb3dzIGRpZCB5b3UgaGF2ZSBwbGVhc2UgKCBjYWtlIHBlcmZv
cm1hbmNlIHNlZW1zIHRvIGRyb3Agc2lnbmlmaWNhbnRseSB3aXRoIGluY3JlYXNlZCBudW1iZXIg
b2YgVENQIGZsb3dzLCBhbHRob3VnaCBJIG5lZWQgdG8gZG8gbW9yZSB0ZXN0aW5nIHRvIHVuZGVy
c3RhbmQgd2h5ICk/CgpJdCdzIGFsbW9zdCBjZXJ0YWlubHkgcmVsYXRlZCB0byB0aGUgZXh0cmVt
ZWx5IHRpZ2h0IEFRTSBzZXR0aW5ncyB5b3UgaW1wb3NlZCBvbiBpdCwgYW5kIG9uIG5vIG90aGVy
IEFRTSB5b3UgdGVzdGVkLgoKPiAJ4oCiIFdoYXQgd2FzIHRoZSBSVFQ/CgpJIHRoaW5rIHRoaXMg
d2FzIGp1c3QgaW4gYSBMQU4gZW52aXJvbm1lbnQsIHRvIGdhdWdlIHRoZSBjYXBhYmlsaXRpZXMg
b2YgdGhlIG1hY2hpbmUganVzdCBhcyB5b3UncmUgZG9pbmcuICBXZSBpbnNlcnQgYSBkZWxheSBp
biB0aGUgbWlkZGxlIHdoZW4gdGVzdGluZyBvdGhlciB0aGluZ3MsIHN1Y2ggYXMgdGhlIHBlcmZv
cm1hbmNlIGFuZCBmaW5lLXNjYWxlIGJlaGF2aW91ciBvZiBhIHFkaXNjL0NDIGNvbWJpbmF0aW9u
LgoKPiAJ4oCiIExvYWQgdG9vbD8KCkkgYmVsaWV2ZSBQZXRlIHdhcyB1c2luZyBpcGVyZjMgZm9y
IHRoaXMsIG9yIHBvc3NpYmx5IEZsZW50IHdoaWNoIGRlbGVnYXRlcyB0byBuZXRwZXJmLiAgVGhl
c2UgZGF5cyBoZSdzIGRldmVsb3Bpbmcgc29tZXRoaW5nIG5ldyBhbG9uZyB0aGUgc2FtZSBsaW5l
cy4KCkEgc2ltcGxlIHRlc3QgdXNpbmcgb25lIG9yIG1vcmUgb2YgRmxlbnQncyBzdGFuZGFyZCB0
ZXN0cyBzaG91bGQgYmUgZW5vdWdoIHRvIHJlcGxpY2F0ZSB0aGVzZSByZXN1bHRzLCBhdCBsZWFz
dCBhcHByb3hpbWF0ZWx5LiAgSSB3b3VsZCBhbHNvIHJlY29tbWVuZCB1c2luZyBFQ04sIGJ1dCB5
b3Ugc2hvdWxkIGdldCBhdCBsZWFzdCByZWFzb25hYmxlIHJlc3VsdHMgd2l0aG91dCBpdCwgcHJv
dmlkZWQgdGhlIEFRTSBpcyBzZXQgc2FuZWx5LgoKIC0gSm9uYXRoYW4gTW9ydG9uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==
