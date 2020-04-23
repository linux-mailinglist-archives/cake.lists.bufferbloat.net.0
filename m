Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B10201B6684
	for <lists+cake@lfdr.de>; Thu, 23 Apr 2020 23:53:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 24E1A3CB44;
	Thu, 23 Apr 2020 17:53:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587678792;
	bh=b3d2O4JgDWCt9uRPdy72/nONRUjdwTD2D0aS1qn0K8A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IYYdYbqpHdNdyW6Uxh7/f4Ac2GkYPIIfsj0q27+7yfa1QtGob8GD1nFFWJaEHTgb7
	 p8WI76pkfjRzM8dMFnHpsUCtMtpOZ1HyabL2U7viJ2WNbuDv9W3NfWBOFO45L8liTH
	 qb84KWnRXW6hPu/Kdm3gfTCVmIdyoOYbZysQo8w8EumMywBkdBeOeBklHP/7m+PLI3
	 TMiG9is/wbV6jgKf2M8Y6JcBypJ8Mr/5tfeWsj29t+NHOWjgHhqH2RUgYcZVjALiaP
	 m2tXFahtpjeVrEmTp3o/s+QXWpLiI1gBct2iF4n4pdSj8a8lwKYosfzun6PCmMHUdB
	 FHH/ERuEY7C4Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ED24A3B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 17:53:09 -0400 (EDT)
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id EEF1B202C7;
 Thu, 23 Apr 2020 23:53:08 +0200 (CEST)
Received: from sakura (freebox.vlq16.iliad.fr [213.36.7.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ns.iliad.fr (Postfix) with ESMTPS id E15ED20289;
 Thu, 23 Apr 2020 23:53:08 +0200 (CEST)
Date: Thu, 23 Apr 2020 23:53:07 +0200
From: Maxime Bizon <mbizon@freebox.fr>
To: Sebastian Moeller <moeller0@gmx.de>
Message-ID: <20200423215307.GM28541@sakura>
References: <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
 <20200423092909.GC28541@sakura> <87o8ri76u2.fsf@toke.dk>
 <20200423123329.GG28541@sakura> <877dy66tng.fsf@toke.dk>
 <20200423173111.GL28541@sakura>
 <A82F9728-C934-4CF1-BA37-870E82D6A05A@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A82F9728-C934-4CF1-BA37-870E82D6A05A@gmx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Apr 23 23:53:08 2020 +0200 (CEST)
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Ck9uIFRodXJzZGF5IDIzIEFwciAyMDIwIMOgIDIwOjMwOjA5ICgrMDIwMCksIFNlYmFzdGlhbiBN
b2VsbGVyIHdyb3RlOgoKSGVsbG8sCgo+IGlmIEkgbWlnaHQgYXNrIHlvdSBhIHRhbmdlbnRpYWwg
cXVlc3Rpb24sIGRpZCB5b3UgYWxzbyBsb29rIGF0IE1BUC1UCj4gKHRyYW5zbGF0aW9uKSBhbmQg
aWYgc28sIHdoYXQgbWFkZSB5b3UgY2hvb3NlIE1BUC1FIChlbmNhcHN1bGF0aW9uKT8KCmRlY2lz
aW9uIHdhcyBtYWRlIGEgbG9uZyB0aW1lIGFnbwoKSSByZW1lbWJlciBpdCBoYWQgc29tZXRoaW5n
IHRvIGRvIHdpdGggdGhlIGZhY3QgdGhhdCwgYXQgdGhhdCB0aW1lLApDaXNjbyBvbmx5IHN1cHBv
cnRlZCBNQVAtRSBvbiB0aGUgc3dpdGNoZXMgd2UgcGxhbm5lZCB0byB1c2UgZm9yIHRoaXMsCnNv
IHdlIGRpZCBub3QgZXZlbiBsb29rIGF0IE1BUC1UCgotLSAKTWF4aW1lCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK
