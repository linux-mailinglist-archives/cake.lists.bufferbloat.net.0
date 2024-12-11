Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 189159EC17E
	for <lists+cake@lfdr.de>; Wed, 11 Dec 2024 02:28:10 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B89793CB43;
	Tue, 10 Dec 2024 20:28:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1733880486;
	bh=MFelwp9rKd5vnybmjgxahE8jJCn57vUeVGfvfO1lB9c=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=UptAB9yUdAkvWgX3/GvfjBrdXXpgAr86imJ4qvcz/QXi8MsBnnnbTQqG1mxFPxu8t
	 Ij4TC0IOsSoHWij569WwePpIbSb8t8GYm2eLbvHYjFgAicxdNl3m9WkkbH875w/TOO
	 hro+cNZNwPYB8lJILVU5L3YltidFL8M8Ngn1R21wxajaHrDG377WSoUgrC2TPcJ/Fd
	 uXyWY/0FBawwpgrMqUnl+fQVtowWaPsbPr/vFGSQWvfpC+2SqE7H/qNK8Q9um+tXf5
	 GZufSIAf3XLUFnkwI2Rxe605KgFN2JmiaVODj0lwiTpozZ0GeJ5NPIuo6uySrihjj3
	 1rLdK7o0gPMqQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E2CBF3B29D
 for <cake@lists.bufferbloat.net>; Tue, 10 Dec 2024 20:28:04 -0500 (EST)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D189C5C5C74;
 Wed, 11 Dec 2024 01:27:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 807F0C4CED6;
 Wed, 11 Dec 2024 01:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1733880484;
 bh=Vl2EMTCaUtEnOeOF48k96OqejBMhlk+jdcj3u36qXDI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jXhj8XuQzZr+Uk45OA53prcuJRA/LJLLZ2IoAGmNGCVshJnGCbOrnlKV63rB2ZbRA
 S+2dBUtCQ7zxPwTfggnSVjSQt0TW+rV6qp7b7XPowXVmZDBYENjT8AqCzTeuHmGThO
 BivubXlWv4LKTcHy9Fl2sgtpQmVF6RA1DtqnwQUn56tSTYIDVghCMsqtnJwG2InfaT
 etKtl4nuGsmICEqS1jAFc06fMgMrsyKA5JyNmNHov/IztG0JrTyPditnXaz8gZQd/q
 9Ci4g+ECL8lov+SKpM08ex0A1hZq5akHBjQ31hzqSuqU5n41cQVrMhLDOe/jwgT12W
 Wbr6c+nGIRi2Q==
Date: Tue, 10 Dec 2024 17:28:02 -0800
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Message-ID: <20241210172802.410c76a6@kernel.org>
In-Reply-To: <87a5d46i9c.fsf@toke.dk>
References: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
 <20241209155157.6a817bc5@kernel.org>
 <CAA93jw4chUsQ40LQStvJBeOEENydbv58gOWz8y7fFPJkATa9tA@mail.gmail.com>
 <87a5d46i9c.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net-next] net_sched: sch_cake: Add drop reasons
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
From: Jakub Kicinski via Cake <cake@lists.bufferbloat.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCAxMCBEZWMgMjAyNCAwOTo0Mjo1NSArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gPiBXaGlsZSBJIGluaXRpYWxseSBhZ3JlZWQgd2l0aCBtYWtpbmcgdGhpcyBn
ZW5lcmljLCBwcmVzZXJ2aW5nIHRoZSBxZGlzYyBmcm9tCj4gPiB3aGVyZSB0aGUgZHJvcCBjYW1l
IGxldHMgeW91IHNhZmVseSBpbnNwZWN0IHRoZSBjYiBibG9jayAodGltZXN0YW1wLCBldGMpLAo+
ID4gZm9ybWF0IG9mIHdoaWNoIHZhcmllcyBieSBxZGlzYy4gWW91IGFsc28gZ2V0IGluc2lnaHQg
YXMgdG8gd2hpY2gKPiA+IHFkaXNjIHdhcyBkcm9wcGluZy4KPiA+Cj4gPiBEb3duc2lkZSBpcyB3
ZSdsbCBlbmQgdXAgd2l0aCBTS0JfRFJPUF9SRUFTT05fWFhYX09WRVJMSU1JVCBmb3IKPiA+IGVh
Y2ggb2YgdGhlIHFkaXNjcy4gRXRjLiAgCj4gCj4gWWVhaCwgSSBhZ3JlZSB0aGF0IGEgZ2VuZXJp
YyAiZHJvcHBlZCBieSBBUU0iIHJlYXNvbiB3aWxsIGJlIHRvbyBnZW5lcmljCj4gd2l0aG91dCBr
bm93aW5nIHdoaWNoIHFkaXNjIGRyb3BwZWQgaXQuCgpXaHkgZG9lcyB0eXBlIG9mIHRoZSBxZGlz
YyBtYXR0ZXIgaWYgdGhlIHFkaXNjIHdhcyBvdmVybGltaXQ/Cgo+IEkgZ3Vlc3MgYW55IGNhbGxz
IGRpcmVjdGx5IHRvIGtmcmVlX3NrYl9yZWFzb24oKSBmcm9tIHRoZSBxZGlzYyB3aWxsCj4gcHJv
dmlkZSB0aGUgY2FsbGluZyBmdW5jdGlvbiwgYnV0IGZvciBxZGlzY19kcm9wX3JlYXNvbigpIHRo
ZSBkcm9wCj4gd2lsbCBiZSBkZWZlcnJlZCB0byBfX2Rldl9xdWV1ZV94bWl0KCksIHNvIG5vIHdh
eSBvZiBrbm93aW5nIHdoZXJlCj4gdGhlIGRyb3AgY2FtZSBmcm9tLCBBRkFJQ1Q/CgpDYW4geW91
IHRlbGwgbWUgd2h5IEknZCBuZWVkIHRvIGluc3BlY3QgdGhlIHNrYi0+Y2JbXSBpbiBjYWtlIGlm
IHBhY2tldAppcyBvdmVybGltaXQ/IEFjdHVhbGx5LCBub25lIG9mIHRoZSBmaWVsZHMgb2YgdGhl
IGNiIGFyZSBpbml0aWFsaXplZAp3aGVuIHRoZSBwYWNrZXQgaXMgZHJvcHBlZCBmb3Igb3Zlcmxp
bWl0LCBBRkFJVS4KCklmIHNvbWVvbmUgaXMgZG9pbmcgc2VyaW91cyAvIGFkdmFuY2VkIGRlYnVn
IHRoZXkgbW9zdGx5IGNhcmUgYWJvdXQKYWNjZXNzIHRvIHRoZSBxZGlzYyBhbmQgY2FuIHRyaXZp
YWxseSBjaGVjayBpZiBpdHMgb3BzIG1hdGNoIHRoZQpleHBlY3RlZCBzeW1ib2wuIChTcGVha2lu
ZyBmcm9tIGV4cGVyaWVuY2UsIEkndmUgYmVlbiBkZWJ1Z2dpbmcgRlEKcGFja2V0IGxvc3Mgb24g
Tm92IDIzcmQuKQoKSWYgc29tZW9uZSBpcyBqdXN0IGRvaW5nIGhpZ2ggbGV2ZWwgZHJvcCBhdHRy
aWJ1dGlvbiBoYXZpbmcgdG8gbGlzdCBhbGwKcG9zc2libGUgcWRpc2NzIHVuZGVyICJxZGlzYyBk
aXNjYXJkIiBpcyBwdXJlbHkgcGFpbi4KCkNhbiB3ZSBzdGFydCB3aXRoIE9WRVJMSU1JVCBhbmQg
Q09OR0VTVElPTiBhcyBnZW5lcmljIHZhbHVlcyBhbmQgd2UgY2FuCnNwZWNpYWxpemUgaWYgYW55
b25lIGhhcyBhIGNsZWFyIG5lZWQ/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
