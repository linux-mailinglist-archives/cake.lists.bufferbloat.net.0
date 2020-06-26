Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2713320AF5C
	for <lists+cake@lfdr.de>; Fri, 26 Jun 2020 12:01:38 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E13F93CB38;
	Fri, 26 Jun 2020 06:01:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593165695;
	bh=o4dZ8+C7VFlqf+C7AOZ/0OlVnCM5JNtzD5rap3Whyc8=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QqZBb2gdfzQFoU09f/99z8Bfaa2IRXUoBBq4LmjpKi/u4ERePTF9oqxHfnTtbK2z7
	 aLMgNuH7r3eM4Em8anBu37BONMGEq8k8uJ4QBjmUq1UUohmvS4e2spLalhDL8q7vGR
	 QcIHE0bOdtoeTeeMnHZ+w5t1otk9uihxUHqYEm/m8h5SWtIo/2dH1BPDkZTMJtsBWH
	 xPtTScZr1xtqVXvSVaoKBXJq/BtyZxsP2z/pU/X6fLV2pwC6aUGYArD0fpx4Iv1gGV
	 Nxlxj/5N0HUigx0+FbfktDl3gdl4ONyfAWqWzV/m57tpBJQQn/hUyWxDcqW6j9DNyZ
	 CxY1YvViF+bhA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8D8933B29D
 for <cake@lists.bufferbloat.net>; Fri, 26 Jun 2020 04:27:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593160042;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+SoC1A8xJyoko0NAUju81LiiMymvENrGGCdhnwcV3UY=;
 b=NXRaEC7A7BnhRZft3sOq5rCUwSmsh3EsB49rI7UO+XNd6gO9SCgJVqPNkAc4l4c88qh43v
 poK0PsH7Z5rzIdxuenMbF78TkBUrYL0ggoMglRc64PZAL1z2jsilvW4Wbc7YvddQgZ5Rsb
 23kL1rlBTZltteGLhMSZW75LcNacJ1o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-mGDtYEWePhO8fpEjOJrYag-1; Fri, 26 Jun 2020 04:27:16 -0400
X-MC-Unique: mGDtYEWePhO8fpEjOJrYag-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9EE8C107ACCD;
 Fri, 26 Jun 2020 08:27:15 +0000 (UTC)
Received: from new-host-5 (unknown [10.40.194.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 168595C66E;
 Fri, 26 Jun 2020 08:27:09 +0000 (UTC)
Message-ID: <240fc14da96a6212a98dd9ef43b4777a9f28f250.camel@redhat.com>
From: Davide Caratti <dcaratti@redhat.com>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, David
 Miller <davem@davemloft.net>
In-Reply-To: <87k0zuj50u.fsf@toke.dk>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
 <159308610390.190211.17831843954243284203.stgit@toke.dk>
 <20200625.122945.321093402617646704.davem@davemloft.net>
 <87k0zuj50u.fsf@toke.dk>
Organization: red hat
Date: Fri, 26 Jun 2020 10:27:08 +0200
MIME-Version: 1.0
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mailman-Approved-At: Fri, 26 Jun 2020 06:01:34 -0400
Subject: Re: [Cake] [PATCH net-next 1/5] sch_cake: fix IP protocol handling
 in the presence of VLAN tags
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

aGVsbG8sCgpteSAyIGNlbnRzOgoKT24gVGh1LCAyMDIwLTA2LTI1IGF0IDIxOjUzICswMjAwLCBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4gSSB0aGluayBpdCBkZXBlbmRzIGEgbGl0
dGxlIG9uIHRoZSB1c2UgY2FzZTsgc29tZSBjYWxsZXJzIGFjdHVhbGx5IGNhcmUKPiBhYm91dCB0
aGUgVkxBTiB0YWdzIHRoZW1zZWx2ZXMgYW5kIGhhbmRsZSB0aGF0IHNwZWNpYWxseSAoZS5nLiwK
PiBhY3RfY3N1bSkuCgpJIHJlbWVtYmVyIHRhaHQgc29tZXRoaW5nIHNpbWlsYXIgd2FzIGRpc2N1
c3NlZCBhYm91dCAxIHllYXIgYWdvIFsxXS4KCj4gV2hlcmVhcyBvdGhlcnMgKGUuZy4sIHNjaF9k
c21hcmspIHByb2JhYmx5IHdpbGwgaGF2ZSB0aGUgc2FtZQo+IGlzc3VlLgoKSSdkIHNheSB0aGF0
IHRoZSBpc3N1ZSAicHJvcGFnYXRlcyIgdG8gYWxsIHFkaXNjcyB0aGF0IG1hbmdsZSB0aGUgRUNO
LUNFCmJpdCAoaS5lLiwgY2FsbGluZyBJTkVUX0VDTl9zZXRfY2UoKSBbMl0pLCBtb3N0IG5vdGFi
bHkgYWxsIHRoZSBSRUQKdmFyaWFudHMgYW5kICJjb2RlbC9mcV9jb2RlbCIuCgo+ICBJIGd1ZXNz
IEkgY2FuIHRyeWluZyBnb2luZyB0aHJvdWdoIHRoZW0gYWxsIGFuZCBmaWd1cmluZyBvdXQgaWYK
PiB0aGVyZSdzIGEgbW9yZSBnZW5lcmljIHNvbHV0aW9uLgoKRm9yIHNjaF9jYWtlLCBJIHRoaW5r
IHRoYXQgdGhlIHFkaXNjIHNob3VsZG4ndCBsb29rIGF0IHRoZSBJUCBoZWFkZXIgd2hlbgppdCBz
Y2hlZHVsZXMgcGFja2V0cyBoYXZpbmcgYSBWTEFOIHRhZy4KClByb2JhYmx5LCB3aGVuIHRjX3Nr
Yl9wcm90b2NvbCgpIHJldHVybnMgRVRIX1BfODAyMVEgb3IgRVRIX1BfODAyMUFELCB3ZQpzaG91
bGQgbG9vayBhdCB0aGUgVkxBTiBwcmlvcml0eSAoUENQKSBiaXRzIChhbmQgdGhhdCdzIHNvbWV0
aGluZyB0aGF0CmNha2UgZG9lc24ndCBkbyBjdXJyZW50bHkgLSBidXQgSSBoYXZlIGEgc21hbGwg
cGF0Y2ggaW4gbXkgc3Rhc2ggdGhhdAppbXBsZW1lbnRzIHRoaXM6IHBsZWFzZSBsZXQgbWUga25v
dyBpZiB5b3UgYXJlIGludGVyZXN0ZWQgaW4gc2VlaW5nIGl0IDopCikuCgpUaGVuLCB0byBlbnN1
cmUgdGhhdCB0aGUgSVAgcHJlY2VkZW5jZSBpcyByZXNwZWN0ZWQsIGV2ZW4gd2l0aCBkaWZmZXJl
bnQKVkxBTiB0YWdzLCB1c2VycyBzaG91bGQgZXhwbGljaXRseSBjb25maWd1cmUgVEMgZmlsdGVy
cyB0aGF0ICJtYXAiIHRoZQpEU0NQIHZhbHVlIHRvIGEgUENQIHZhbHVlLiBUaGlzIHdvdWxkIGVu
c3VyZSB0aGF0IGNvbmZpZ3VyZWQgcHJpb3JpdHkgaXMKcmVzcGVjdGVkIGJ5IHRoZSBzY2hlZHVs
ZXIsIGFuZCB3b3VsZCBhbHNvIGJlIGZsZXhpYmxlIGVub3VnaCB0byBhbGxvdwpkaWZmZXJlbnQg
Im1hcHBpbmdzIi4gCgpTdXJlLCBteSBwcm9wb3NhbCBkb2VzIG5vdCBjb3ZlciB0aGUgcHJvYmxl
bSBvZiBtYW5nbGluZyB0aGUgQ0UgYml0IGluc2lkZQpWTEFOLXRhZ2dlZCBwYWNrZXRzLCBpLmUu
IGlmIHdlIHNob3VsZCB1bmRlcnN0YW5kIGlmIHFkaXNjcyBzaG91bGQgYWxsb3cKaXQgb3Igbm90
LgoKV0RZVD8KCnRoYW5rIHlvdSBpbiBhZHZhbmNlIQotLSAKZGF2aWRlCgoKWzFdIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL25ldGRldi9DQU1faVFwVW11SEg4UzM1RVJ1Si1zRlM9MTdhYS1DOHVI
U1dGLVdGN3RvQU5YMmVkQ1FAbWFpbC5nbWFpbC5jb20vI3QKWzJdIGh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L2xhdGVzdC9DL2lkZW50L0lORVRfRUNOX3NldF9jZQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QK
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQo=
