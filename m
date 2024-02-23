Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 363878618BC
	for <lists+cake@lfdr.de>; Fri, 23 Feb 2024 18:03:46 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3E9093CB43;
	Fri, 23 Feb 2024 12:03:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1708707825;
	bh=19fTwJqhQqz9GaFmm1tj7hkxjX26/ZlXoTx0noJO/iE=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=mBMFF1RXp2e5vrcpYWVYmXRxF/OvG9+h4tBkrI+zscNrRbFgoHhCOIXSXy4YaE5oG
	 nFup0VrSQNfuF0mnXugPPTevEnQ9QTLHUFcBoIoQ30qtbtatoZv/JQ/8S8oJgCgCtn
	 PQ4V+rT9rWR5IQ4bTroJre3fKR7xIStOSyGg4WRIzWW7taE5Xi+ynnPrXTSXPF7eni
	 oC4lvDrFklepOFd8kvAj3sRn7VJtRDEQ6mR9LJOicYVSh3OTYnKXg7TyqGp7x/W4n/
	 uLOCPrUxlBtz1aVTvL5WkMedmUPR81eMUsCfhoRuf/dr77locA/4/n9S9y/CWn+3mm
	 CpXYTTYOWKCkg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EE79B3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 23 Feb 2024 12:03:43 -0500 (EST)
Received: by mail-lj1-x236.google.com with SMTP id
 38308e7fff4ca-2d2305589a2so14365491fa.1
 for <cake@lists.bufferbloat.net>; Fri, 23 Feb 2024 09:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708707821; x=1709312621; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jFzg91Uz0eTdvaw3hPv0DO9S+j3Cm8QDhH0oSW4VA3Y=;
 b=nDz/XkW57MylqpkjJ03RsRfRIBRyyL4vvjHJcKNpFNaeuEwsCVvzPeyTwGfogfqAiR
 TNgbFkb9zFQeas/8m0+E3elXQF+c0ihFvLCx7lMJRcujJW+BQy9VdwmQfqsws+Z59Q1f
 09WJLjx+E+0O/LkcwKSzo8HI/40dUM4dDg6uDN+ayEsGsZ5hmkOAVz7SFHez2m9zrhfT
 P9MgSWJLTjqqAHWbmqDnRFQ64iXAOPmAFuk+OL5qyQUJwfSB80u15dgtEaWeNgdMkUcX
 VAfRLZ0/fEnRcY2ShxOWey7UTUCK9VE9DlmpUDJ0VZnOZy+O0PTeLiNIVvYygzJWQQYq
 weIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708707821; x=1709312621;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jFzg91Uz0eTdvaw3hPv0DO9S+j3Cm8QDhH0oSW4VA3Y=;
 b=HHJKnSYTwCy5A+byBPuUk+TovwSUcA0nvaxXWxxABoM7XTyqbAeyHLHuiHaNPnMnon
 TFq1yGTmpzg58SnNOOUTbpnIJ/GnYN8syKYlbr19TJkrpZ6HXrH+Owvp40y+n71GUSFi
 HdQ4JCGczaHxgYbBrCE//bwLKBfC4jQljh95eH4UozGqdRw5JUgnL88fXvgZWY7PTZNb
 vnKc4QkNCgr+/IuTxkn9h92KKPJMma5FGS6rV3G7zu1T2GNsFezgrbwOp39VPc4VY3TN
 15iL8kgmoIIG4WVSjWSO9V8VLgyXZWeM8lEOvc2w8Zl1P8PN9wT7FbUKGOXptNmAY7m0
 fQsA==
X-Gm-Message-State: AOJu0YwrWCyGJTCpluW2gDa0Tn1Q3QeDDtQyxV6n5S4IJM2vO1ophWtF
 jaJZRUKPycFINsorMjACVGwrdQgwL/YWoeRF8dRuWDLgQjQpBaV7WytkqjJJO2FJJEGDiwKiuj1
 ajj/h3OUP4bLv6YKif1YUpeNsrYSod45Fm7o=
X-Google-Smtp-Source: AGHT+IHxsrgUzcQ2/xXCtcaSGPfnNQ17xeZD3hk+MtdYpFVFWSQyG59vJUhm9aRfJh14Tap8meeoxk33qUMsiSWwRDw=
X-Received: by 2002:a2e:9b4b:0:b0:2d2:2cff:fc49 with SMTP id
 o11-20020a2e9b4b000000b002d22cfffc49mr296993ljj.18.1708707821425; Fri, 23 Feb
 2024 09:03:41 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw7YeW4wTC2OL4AxeEPBOGL4sKN+e5Dtre_0VZCkOjkbCw@mail.gmail.com>
 <875xyldhbk.fsf@toke.dk>
 <CAA93jw7y+S6NvRf+Q_VtqJkDnWQJO5Cr5d_En6wHvas6pEBT1w@mail.gmail.com>
 <87sf1juobz.fsf@toke.dk>
In-Reply-To: <87sf1juobz.fsf@toke.dk>
Date: Fri, 23 Feb 2024 12:03:30 -0500
Message-ID: <CAA93jw4rBaHTV-pCbBdg_5fhhc2nVqqXa_cUCc_MAzrpa=a_5w@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] cake's ack-filter vs GSO
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TXkgbWVtb3J5IGFib3V0IGFsbCB0aGlzIHN0dWZmIGlzIGV4dHJlbWVseSBzY3JhbWJsZWQgYnkg
dGhlIG12bmV0YQpkcml2ZXIgd2hpY2ggd3MgdGhlIGZpcnN0IHRoaW5nIHRoYXQgZHJvdmUgbWUg
dG8gY29uc2lkZXIgR1NPCnNwbGl0dGluZyBpbiB0aGUgZmlyc3QgcGxhY2UuCgpUaGF0IGV2b2x2
ZWQgc2lnbmlmaWNhbnRseS4gSSBhbHNvIHJlbWVtYmVyIFhNSVRfbW9yZSBjb3N0aW5nIHVzIG1v
cmUKYmFuZHdpZHRoIHRoYW4gaXQgZ2FpbmVkLCBvbiB0aGUgd25kcjM4MDAsIGR1ZSB0byBlYXRp
bmcgbW9yZSBjcHUgb3IKaWNhY2hlLiBUaGVuIHRoZXJlIHdhcyB0aGUgY2hhbmdlIGluIGhvdyBp
bmJvdW5kIHNrYnMgd2VyZSBwcm9jZXNzZWQKb3ZlcmFsbCwgYW5kIGlubnVtZXJhYmxlIGF0dGVt
cHRzIHRvIHJlbW92ZSBsb2NrcyBmcm9tIHBmaWZvX2Zhc3QsIGFuZAouLi4gZ2h1IGtub3dzIHdo
YXQgZWxzZSBoYXMgY2hhbmdlZC4gSG93IGRvZXMgcGFja2V0IHBhY2luZyBhZmZlY3QKdGhpbmdz
PyBIb3cgbXVjaCBCQlJ2MyBidWZmZXJzPwoKSSBhbSBubyBsb25nZXIgY2VydGFpbiBvZiBhbnl0
aGluZy4gSSBhbSBwcmV0dHkgc3VyZSwgaG93ZXZlciwgdGhhdAp2aWtpbmdzIHdlcmUgbm90IGJs
YWNrLgoKaHR0cHM6Ly9naXptb2RvLmNvbS9nb29nbGUtYW50aS13b2tlLWJhYmllcy1nZW1pbmkt
YmxhY2stdmlraW5ncy0xODUxMjc1NDIyCgpJIGFza2VkIHRoZSBsYXRlc3QgQUlzIGZvciBzdW1t
YXJpZXMgYXMgdG8gd2hhdCBmcV9jb2RlbCBkb2VzLCB3aGF0CnByb2R1Y3RzIGl0IGlzIGluLCBh
bmQgaXQgd2FzIHNsaWdodGx5IHdyb25nIGluIGFsbCBjYXNlcy4KCldoYXQgcHJvZHVjdHMgaGF2
ZSBmcV9jb2RlbCBpbiB0aGVtPyIgd2FzIHByZXR0eSBnb29kLgoKSXQganVzdCBtaXNzZWQgYXBw
bGUuCgpBc2tpbmcgZ2VtaW5pIGFnYWluOgoKIklzIHRoZSBwaWUgYXFtIGJldHRlciB0aGFuIGZx
X2NvZGVsPyBIb3cgZG8gYm90aCBjb21wYXJlIHRvIENBS0UiIHdhcyBhbHNvIGZ1bi4KCkl0IGdl
bmVyYXRlZCBhIHJlYWxseSBuaWNlIHRhYmxlLiBBbmQgbWFkZSBteSBza2luIGl0Y2ggYXQgdGhl
IGluYWNjdXJhY2llcy4KCklzIHRoZSBwaWUgYXFtIGJldHRlciB0aGFuIGZxX2NvZGVsPyBIb3cg
ZG8gYm90aCBjb21wYXJlIHRvIENBS0U/CgpPbiBGcmksIEZlYiAyMywgMjAyNCBhdCAxMTozOeKA
r0FNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUB0b2tlLmRrPiB3cm90ZToKPgo+IERh
dmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JpdGVzOgo+Cj4gPiBPbiBTdW4sIEZlYiAx
OCwgMjAyNCBhdCA4OjM34oCvQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2Uu
ZGs+IHdyb3RlOgo+ID4+Cj4gPj4gRGF2ZSBUYWh0IHZpYSBDYWtlIDxjYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldD4gd3JpdGVzOgo+ID4+Cj4gPj4gPiBJdCBoYXMgYmVlbiB5ZWFycyBzaW5jZSBJ
IGxvb2tlZCBhdCBjYWtlJ3MgY29kZS4KPiA+PiA+Cj4gPj4gPiBEb2VzIGFueW9uZSByZW1lbWJl
ciB3aHkgd2UgZG8gbm90IGFjay1maWx0ZXIgYSBnc28tc3BsaXQ/Cj4gPj4KPiA+PiBCZWNhdXNl
IGEgR1NPIHBhY2tldCBjYW5ub3QgYmUgYSBwdXJlIEFDSywgc28gaXQgd291bGRuJ3QgYmUgZmls
dGVyZWQKPiA+PiBhbnl3YXkuLi4KPiA+Cj4gPiBCdXQgYSBHUk8gcGFja2V0IGNhbiwgYW5kIG1v
c3QgbGlrZWx5IElTIGEgcHVyZSBhY2sgcGFja2V0IHRyYWluIHRoYXQKPiA+IGNvdWxkIGFuZCBz
aG91bGQgYmUgdGhpbm5lZC4gSSB0aGluay4gWWVzPwo+Cj4gRXJtLCBubywgYmVjYXVzZSB0aG9z
ZSB3b3VsZCBoYXZlIGhlYWRlciBkaWZmZXJlbmNlcyBhbmQgc28gd291bGRuJ3QgYmUKPiBjb21i
aW5lZCBpbnRvIGEgc2luZ2xlIEdSTyBwYWNrZXQuLi4KPgo+IC1Ub2tlCgoKCi0tIApodHRwczov
L2Jsb2cuY2Vyb3dydC5vcmcvcG9zdC8yMDI0X3ByZWRpY3Rpb25zLwpEYXZlIFTDpGh0IENTTywg
TGlicmVRb3MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
