Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D0383324783
	for <lists+cake@lfdr.de>; Thu, 25 Feb 2021 00:27:08 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2DE4D3CB44;
	Wed, 24 Feb 2021 18:27:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614209227;
	bh=c20QG5z9wW5OTeRsnG8MLHClA/LqylRk2yduX+KMomQ=;
	h=Date:In-Reply-To:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=pkNwNSdEKZDe8KH6++fzpbIUA9AgVq5qkv/GO0NMg248n6txQja6rNoer7i0UtR+N
	 cMe8rbQs/W6rQAdiDYwZUPdbHV2o1xm8R1bWXrch6zsmN/+1CvzH4jZsPx503q3+cO
	 o9lY4nZbsFABk8urNOigNGP0vLjYONmzqh6ercnQX8QsWjfx3YetYJR2UOdXMwtCED
	 Ine0zoMwuhefzXaUyMrSnCDAAmGLFARSwr06A+dGso4JaZ0E8GhYrbtDcfB2uzvJik
	 2JcYn7yKLfodd3pS1TZkFx56p0O3cWJ30CfWs/n+vJPq7S+zPnfBwJnOYYWq8KweVv
	 8IPY8boHaNbJg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B03323B29D;
 Wed, 24 Feb 2021 18:27:04 -0500 (EST)
Date: Thu, 25 Feb 2021 00:27:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1614209222; bh=jgM7gNve3WAuSHV5eS+wMOEZW3lBd/VTR9MvBFpkLzA=;
 h=Date:In-Reply-To:References:Subject:To:CC:From:From;
 b=tNB5h3gsne4681GFAVDtEoxw6Jk9e8E5ckTd99c3AAwJoB1P63fUYcjtdgUlZI/D+
 kODhYn9yUTdbUx7UwZFVJQ7Lr4GJ3MMxvz+AIUloPsPNNaIDEjZ4bR1BCOjcMt1TyF
 bJmzKd6zPWTp1p/pr0B3yfJQpsRjVyykl2LDaOQ5WG4tVAKbtSSME1iE5HnjiZuAlL
 gPNHCuwuWsZiCUCST67IU4BqdyfkaPREUfwPlCVqdTPrbY2Frt46p60+JVGy6+eXel
 etHJTdvD0FBQiM2fbqaajoB9StmTworRzswwyLgn34e1BVBEetMg+Y+ag6teIaYxrc
 CMTyLolc4queQ==
In-Reply-To: <a43b8d79-8d32-4048-a47e-df92eae622fa@www.fastmail.com>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
 <87im6h4u2p.fsf@toke.dk>
 <a43b8d79-8d32-4048-a47e-df92eae622fa@www.fastmail.com>
MIME-Version: 1.0
To: Nils Andreas Svee <me@lochnair.net>,Dave Taht <dave.taht@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <369A70AB-3ADF-4211-8A09-E9FB77CEE59D@toke.dk>
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
	8pm CET Tuesday 23
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
From: =?ISO-8859-1?Q?Toke_H=F8iland-J=F8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: =?ISO-8859-1?Q?Toke_H=F8iland-J=F8rgensen?= <toke@toke.dk>
Cc: =?ISO-8859-1?Q?Toke_H=F8iland-J=F8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CgpPbiAyNCBGZWJydWFyeSAyMDIxIDIzOjQ5OjQ4IENFVCwgTmlscyBBbmRyZWFzIFN2ZWUgPG1l
QGxvY2huYWlyLm5ldD4gd3JvdGU6Cj5JJ2xsIGxvb2sgaW50byBwcGluZy4gQWRtaXR0ZWRseSBJ
J20gcXVpdGUgaWdub3JhbnQgYWJvdXQgQlBGLCBzbyBJJ2xsCj5saWtlbHkgYmx1bmRlciBhYm91
dCBmb3IgYSBiaXQsIGJ1dCBoZXksIGdvdCBpdCB0byBjb21waWxlIC0gKmFuZCogcnVuLAo+YnV0
IEkgZGlkbid0IGdldCBhbnkgb3V0cHV0IG90aGVyIHRoYW4gdGhlIG1lc3NhZ2VzIGZyb20gY2xl
YW5fbWFwLgo+RHVubm8gaWYgSSBkaWQgc29tZXRoaW5nIHdyb25nLCBJJ2xsIGxvb2sgYXQgaXQg
YWdhaW4gdG9tb3Jyb3cuCgoKSXQgbW9uaXRvcnMgVENQIHRyYWZmaWMsIHNvIGl0J2xsIG9ubHkg
c2hvdyBzb21ldGhpbmcgaWYgeW91IGhhdmUgVENQIGZsb3dzIGdvaW5nIHdoaWxlIHlvdSBydW4g
aXQuLi4KCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
