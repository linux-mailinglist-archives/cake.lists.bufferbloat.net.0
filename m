Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D47E31EFCB
	for <lists+cake@lfdr.de>; Thu, 18 Feb 2021 20:28:49 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 779763CB38;
	Thu, 18 Feb 2021 14:28:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613676528;
	bh=6E7COr6RMKSTKcL72OxPyTxpGl95KOmALKNNgyW9RLk=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=A+OpvZ4X0BaLY9Mt3XayHAr4cvq14XZKttTq18NVdem/Gk6oqovJ1c9ItoIXbr9E9
	 GM3SKRPRxuF+nCXXvRE3L6r1+oqGwVm9EGvdAOvo5h0cMHDu8JfjyVhAsT373uwbJi
	 q8hgSBH15L1cD/bMBHSNb3Leuq42w1d73uxDVmmtXRXGXYLW7uiRxp1huldE8yc1Cm
	 tKAAYgnT7KK2GvK18kd1lGKC+tDrIfV2fSMIDdd3utPgoCuqOii2btyYxUoNQomzeJ
	 x8NRvSQf2in2HMHeAmaLFBsJTzPNSXR8M0IYKhiMgoAFlV47FjpyGUJS+b9dLhg+RY
	 QhIl0WIctwDdw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4D3DB3B29D
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 14:28:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1613676526; bh=+WQM5CSZst95DiGUEA01mr2Oo9RbwkqQrI/cjjD36AI=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=L0l68UcFtn4s4pZpU4HQeJXXtXaDChhVxXm8qqnqcZ6cahBdOaP/VMcfStwOyyplp
 pqFLEqFD6bG6sJzDQ2+1YeNqCvnYTt+egzLa8jZ78+7UTHJkvoVneNk01tIuEQ9cPs
 NPAT/EovsWtDZHasMHsKLNlQqxw4CtheDige2Nah5HF/cvNdru7fwz7ZNXQrW8cSUG
 cFmjZX8sJHVeU5bkwZtNDpG6e5Htm503CEMUEIzhHPxGqpZ3PAPYSLnZU9ehzc/gBJ
 NX7LcpBSKCfvisLcC98x7vUsCowHyj8FQsb7Oku+c8LL8oouUwabyoj6evR7g4WMKI
 2iZGg1Lp613iA==
To: Peter Lepeska <bizzbyster@gmail.com>
In-Reply-To: <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
Date: Thu, 18 Feb 2021 20:28:45 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87im6pkweq.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Enforcing video quality question
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

UGV0ZXIgTGVwZXNrYSA8Yml6emJ5c3RlckBnbWFpbC5jb20+IHdyaXRlczoKCj4gQSB1c2VyIG9u
IHRoZSBPcGVuV3J0IGZvcnVtIHN1Z2dlc3RlZCBoYXNobGltaXQgcnVsZXMgc3VwcG9ydGVkIGJ5
Cj4gaXB0YWJsZXMuIEhvdyBkb2VzIHRoYXQgaWRlYSBzb3VuZCB0byB5b3U/CgpUaGF0IHdpbGwg
cmVzdWx0IGluIGEgY2xpZmYtZWRnZSBwb2xpY2VyIChpLmUuLCBhcyBzb29uIGFzIGEgZGV2aWNl
IGdvZXMKb3ZlciBpdHMgbGltaXRzIGl0IHdpbGwgc2VlIGV2ZXJ5IHBhY2tldCBnZXQgZHJvcHBl
ZCkuIFRoaXMgZG9lc24ndAppbnRlcmFjdCB0b28gd2VsbCB3aXRoIHRoZSBidXJzdGluZXNzIG9m
IFRDUCwgc28geW91J2xsIGxpa2VseSBnZXQKZXJyYXRpYyBiZWhhdmlvdXIgb2YgdGhlIHRyYWZm
aWMgaWYgeW91IGRvIHRoYXQuIERvaW5nIHRoZSBzYW1lIHRoaW5nCndpdGggSFRCIG1lYW5zIHRo
ZSByb3V0ZXIgd2lsbCBxdWV1ZStzaGFwZSBlYWNoIGNsYXNzIChhbmQgd2l0aCBGUS1Db0RlbApv
biB0aGUgbGVhdmVzLCB5b3UnbGwgZ2V0IGEgbmljZSBBUU0gYmVoYXZpb3VyIGFzIHdlbGwpLCBz
byB0aGF0IHdpbGwgYmUKc21vb3RoZXIgYW5kIGxlc3MgcHJvbmUgdG8gYmxvYXQgOikKCi1Ub2tl
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
