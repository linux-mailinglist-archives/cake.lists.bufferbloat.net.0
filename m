Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C83CD195CB4
	for <lists+cake@lfdr.de>; Fri, 27 Mar 2020 18:27:59 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 552CE3CB3C;
	Fri, 27 Mar 2020 13:27:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1585330073;
	bh=51oLyiIgaO2rI3q1xLiiFPpAj8n5GlpAm9nFfQhxkWU=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=M/ZJ0SQA7XZhCcMtD6WE2CWJORnOEPsnbMmKoqFxnL8pz6QZsqUS2uSqWtENsL5R+
	 1t+Rr7YLU9LJzHcJZhAJcPDCDSWqLMGVqKY4vewmK6aFP04AGL2fD1a7qAXZO7vdfe
	 OTMlhomXuIERHFgcy4jHw7gmqI4J1FNiRMu6uWoPLDmUPe9QKCBF8eR0ltUDeQgCvM
	 DAKEBVLz5BgJixgQqmirk43FAPAyw9yljxAx1FPx+nbbejBsAI9xhtt05mp/IIX6Lm
	 Eg+n5jumSAyWp5cPD6nkufy3IsXx4w3qou//O/LTDoNG1FuoIEfHud+8MD+vlyHFf2
	 GqTDBR49QrsXw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 69F1F3B2A4;
 Fri, 27 Mar 2020 13:27:51 -0400 (EDT)
Received: by mail-il1-x12a.google.com with SMTP id j9so9526576ilr.7;
 Fri, 27 Mar 2020 10:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=cbLMcC4EnVu8dcDEMY6MwHkJm9zp4HJy/zr7D5e3Ivw=;
 b=MfHZMfIpcInC2d9qNpLPIIdg/XFCJltMkDihuxuJHoaJvNWo2DqfDc+Rbte9D9mJvB
 1/xBVTLtbsRbUCi3vJHMwlVQrUNun/w4OX/qZMyecef5AGldnd/jQK5wvwjSLAnfdJMp
 08CLxIHLKBpcei4PElMAAsURaS1WRtOhnoexnrenYPqPjLTWzJoW+VeVl4xy0dJTZsod
 60x//Knu7fUV6cNEn6kvtT5RIXUvUTK1/sN+bgvu0jImqwpi63YliNQXarJTmqpqG2jq
 Im7GHm6gjBC3Z7O2FcCKBLVxuT9COKR6jSGFhXZ/UzX3LmYuQhUsLft5uZDjfYjyfdBP
 /Ojg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=cbLMcC4EnVu8dcDEMY6MwHkJm9zp4HJy/zr7D5e3Ivw=;
 b=nEmSEbvrqa/vH3n2tg0tBM01pNCUF/Tq90oDYeiHTaTCAd+99vv6GJuioYIDaMoEyN
 WOt3eWIsS3mP0CYL3creY7v9RI0ui0dXZ47vDh5wa2A3TI8oC9n5O9pfDSA85G+WoD/c
 Kh1Mp95WvCbfC3mfkMJOlWUkBUP55vIfDrEQQ+HJT1iI9nBBvxUc8BYtGBPKNlHZjhPB
 ZwP0rOCijexw6plPl1j5UH4Sdm2fzosRIZeQhZdNYW2vi9O2VdFdnYfT6S+F5dyMmqhC
 mzp8N2T2RdOrSlY6Uj+u961dOmXDoIEbFmKbIqpht38JEucznj50Rk00H3ej9oowAjvi
 lTdQ==
X-Gm-Message-State: ANhLgQ0NRI3NEYmG2EPVgZYg3aqVhSz4ANtGaVJ0thr+FUPJbG+jWzeF
 FMp5JhwXDRVRiYZI+abCYyPR50J0gm2vaTqlh/vSEF0+tm0=
X-Google-Smtp-Source: ADFU+vt3ZVIhzTZFL7Mh9m8PbBwiK9O1h5Mzg2BvEqt4+tKE6KBLFepGi9eVNgC3EYrGBx/X5SZNiPjgCdf3WVsPVOA=
X-Received: by 2002:a92:cf52:: with SMTP id c18mr180574ilr.246.1585330070695; 
 Fri, 27 Mar 2020 10:27:50 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 27 Mar 2020 10:27:39 -0700
Message-ID: <CAA93jw7u5xtq9fzx9iCMd5StW4A=rY7D74YYbKRgAo+5YVajHw@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] mo bettah open source multi-party videoconferncing in an age
 of bloated uplinks?
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
Cc: Ken Rice <krice@freeswitch.org>,
 Anthony Minessale II <anthm@freeswitch.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

c29ydCBvZiBhbiBvdXRncm93dGggb2YgdGhpcyBjb252bzoKCmh0dHBzOi8vbHduLm5ldC9TdWJz
Y3JpYmVyTGluay84MTU3NTEvNzg2ZDE2MWQwNmE5MGYwZS8KCkkgaW1hZ2luZSB3b3JsZHdpZGUg
dmlkZW9jb25mZXJlbmNpbmcgcXVhbGl0eSBjb3VsZCBiZSBtdWNoIGJldHRlciBpZgp3ZSBjb3Vs
ZCBjb252aW5jZSBtb3JlIGZvbGsgdG8KZmluYWxseSBpbnN0YWxsIHNxbSBvciB1cGdyYWRlIHRv
IGEgd29ya2luZyBkb2NzaXMgMy4xIHNvbHV0aW9uLCBldGMuCk1heWJlIHNvbWUgcmFnIHNvbWV3
aGVyZSB3aWxsIGZpbmFsbHkgcGljayB1cCBvbiBidWZmZXJibG9hdCBzb2x1dGlvbnMKYW5kIHJ1
biB3aXRoIGl0PyBPciB3ZSBjYW4gd3JpdGUgc29tZSBhcnRpY2xlcz8gT3IgcmVhY2ggb3V0IHRv
IHNjaG9vbApzeXN0ZW1zPyBPcj8KCkkndmUgYmVlbiBmaWRkbGluZyB3aXRoIGppdHNpLCBhbmQg
YW0gYWJvdXQgdG8gZ2l2ZSBmcmVlc3dpdGNoIGEgdHJ5LgpMYXN0IEkgbG9va2VkIGZyZWVzd2l0
Y2gncyBvdGhlcndpc2UgcHJldHR5IG5pZnR5IGNvbmZlcmVuY2UgYnJpZGdlCmRpZG4ndCBkeW5h
bWljYWxseSBhZGp1c3QgYXQgYWxsIGR1ZSB0byBlMmUgc2lnbmFsbGluZywgYnV0IHRoYXQgd2Fz
CnllYXJzIGFnby4gKD8pCgpJIGhhdmUgdG8gYWRtaXQgdGhhdCBwMnAgbXVsdGlwYXJ0eSB2aWRl
b2NvbmZlcmVuY2luZyBzZWVtcyBtb3JlCnBsYXVzaWJsZSBpbiBhIGRlLWJ1ZmZlcmJsb2F0ZWQg
YWdlLCBidXQKaGF2ZW4ndCBleHBsb3JlZCB3aGF0IHRvb2xzIGFyZSBhdmFpbGFibGUuICg/KQoK
VGhlcmUncyBhbHNvIGJlZW4gdGhpcyBzb21ld2hhdCBlbnRlcnRhaW5pbmcgY29udm8gb24gdGhl
IGlldGYgbWJvbmUKbGlzdDogaHR0cHM6Ly9tYWlsYXJjaGl2ZS5pZXRmLm9yZy9hcmNoL21zZy9t
Ym9uZWQvMnRoRlFrX0lZbjM4WENaQlFhdmhVbU9kNnRrLwoKQXJvdW5kIG1lIHRoZXJlIGhhcyBi
ZWVuIHRoaXMgaHVnZSBpbnRlcmVzdCBpbiAic3RyZWFtaW5nIi4gVGhlIHVzZXIKYWdyZWVtZW50
IGZvciB0aGVzZSAoc2VlIHJlc3RyZWFtLmlvJ3MpIGlzIHNjYXJ5IC0gYW5kIHRoZSBjb3B5cmln
aHQKcG9saWNlIGhhdmUgY29udHJvbC4uLiBidXQgSSBhbSB2ZXJ5IGhhcHB5IHRvIHJlcG9ydCB0
aGF0IGV2ZW4gYQpjb3VwbGUgcmVhbGx5IGxvdXN5IGxvbmcgZGlzdGFuY2UgZnFfY29kZWwnZCBh
dGg5ayBsaW5rcyB3b3JrICpyZWFsbHkqCndlbGwgKHdpdGggZmFjZWJvb2sncyBpbXBsZW1lbnRh
dGlvbiksIHdoZXJlIGEgbm9uIGZxX2NvZGVsZWQgbGluawooYXRoMTBrKSBmYWlsZWQgbWlzZXJh
Ymx5Li4uIGFuZCBzZXR0aW5nIHVwIGEgcmVmbGVjdG9yIGluIG5naW54IGFsc28KZmFpbGVkIG1p
c2VyYWJseS4KCkFueW9uZSB3b3JraW5nIG9uIHRoZSBhdGgxMGsgQVFMIGJhY2twb3J0IGZvciBv
cGVud3J0IGFzIHlldD8KCi0tIApNYWtlIE11c2ljLCBOb3QgV2FyCgpEYXZlIFTDpGh0CkNUTywg
VGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6IDEtODMxLTQzNS0wNzI5
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
