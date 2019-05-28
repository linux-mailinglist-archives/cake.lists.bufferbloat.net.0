Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id F19B02CAA6
	for <lists+cake@lfdr.de>; Tue, 28 May 2019 17:51:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B71BB3CB3C;
	Tue, 28 May 2019 11:51:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1559058676;
	bh=rmBBN5gqFEvcn55EctrzfIuiXbiYnbOVf0gv+bQShpc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TZ1dfbL1kGAe3fjN/4WYZGq2zk7DVOl8dFfSnpPMq9CQHsU30aE3oYg+hPzma4Lan
	 UqEtVN9KXpGb5oVF6GevTzoeSe984gsSH6G6F+r8eXKeXR2LYqGPMvLBmgmNtuv24p
	 2WzUySxZ/Lrda75atUdBciNV6dJFEzb44DuIFdjA4mbe7qKY6Sq90DbbgS8aqlf7Ta
	 bONPDQeBrhNHLYVNkJETCxw6dbY2ygtnMsT6WWE+luSiZDUEQ8QxBgO1urzsr7nm45
	 DoPq1ovkrCy+PE+8aNEKXok54H8M6Tu9anooYbSGqQFWvJ430qntpQTHJYo3o+g6NG
	 mUneaKsuwq9bg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-it1-x132.google.com (mail-it1-x132.google.com
 [IPv6:2607:f8b0:4864:20::132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7D7993B29E;
 Tue, 28 May 2019 11:51:15 -0400 (EDT)
Received: by mail-it1-x132.google.com with SMTP id h11so4666616itf.5;
 Tue, 28 May 2019 08:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gMSy6omKOX68fV7Ibw9GMStYF8WrtdlyeAV82i7kweo=;
 b=S94OIHCxRClLzkFmQ2woQ3ibyhwSlf4e5b/quRO3vIUv8qc8ivcjkUTPhqI4V82OSQ
 NH7NoxbnAZxpv2X7theH7Q/G96aMsA/65SAHAkuORQm7yBwUEeenP9HsjXXrcqn/Z4dj
 HV0XH2D0/5uj9DSVaz0WtrtNN4JFfhdpgoy6fItVZr+Z7niW35VjP4mFjwZWRY5QIO8c
 btaoQUqKkg/MXoLTJ8C0PkZE44AllwlbHf0m87jOcpoJ0V/7PZwj0cS/pGSyXKzIq9bb
 VZ8gWynWx1BHNqOGRgBj4XV1bgAIzhanuNJ3VGlszFasfSGhN6XRfuJce5i5laz4tqdq
 t15Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=gMSy6omKOX68fV7Ibw9GMStYF8WrtdlyeAV82i7kweo=;
 b=GeSYZ+Sq6r2UP3WEeSn9tyPMn18FnSYER53ZDANN7rrdixhQGc8MFhDhqNG4uewXCA
 FJZkh12HTMauw50YWiOF43FHFWZkrEUyHo3/lnL8exb8rMcZEwnDdynVN1qxCMAX9Qps
 Vqey7EdHlIa3LzAwCfBJ3hnpWPn8NaCRJou+9EaFO9yVxtwE6Lm3x3b0HYdI7CTqYDB8
 bf2SHmTBLMOkj/+dWQht7S5KOubxFpeMLiYBcOH7+pcd+B9As0KbkH4Zb/M089smHrVx
 MYkf+rhY5SpU6YAPs6pS8pQWqma2fzPrXg48UlEqoEvtnn3sErGUxCzdznPQXcmKiyP8
 UTJw==
X-Gm-Message-State: APjAAAX1TECjGEry5MmwdWT4HpCBWkbHCI8lC1qSvDA1McGy6VBDsFX+
 v48/eP3aD9oUjwKhik6QPrr9H2eNYviOPLuTI2FVMA==
X-Google-Smtp-Source: APXvYqx+Mfny1JWEryukJobFD4m/xX/DALg6+Wy6/VPyLEfetAXljC6mTtp55BKs8OD8e6Wil2oq3zE8bXL/HhCzRyw=
X-Received: by 2002:a05:660c:28a:: with SMTP id
 s10mr3611473itl.173.1559058674660; 
 Tue, 28 May 2019 08:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <c070f5b3-1c49-41d4-a031-aa3f72df87f3@googlegroups.com>
 <CADVnQy=F4rHfLt2Nm-1rUGkfMjueju_mWj5f+DdqFqBdaJ83oA@mail.gmail.com>
In-Reply-To: <CADVnQy=F4rHfLt2Nm-1rUGkfMjueju_mWj5f+DdqFqBdaJ83oA@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 28 May 2019 08:51:03 -0700
Message-ID: <CAA93jw6pKpnOHM5Tvi9b-ME9BSK3XWmAH8XPKAzy9JBnkzXy9g@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>, 
 bloat <bloat@lists.bufferbloat.net>
Subject: [Cake] Fwd: [bbr-dev] BBR v2 ECN
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

QXQgbGVhc3QgdGhlcmUgd2lsbCBiZSBhIHRlc3RhYmxlIHZlcnNpb24gb2YgYSBMNFMgY29tcGxp
YW50IEJCUnYyCmJlZm9yZSBpdCBnb2VzIHVwc3RyZWFtLiAoc2VlIGJlbG93KQoKSSBmZWFyIGZv
ciB3aGF0IHRoaXMgd2lsbCBkbyB0byBldmVyeSBpbmJvdW5kIHNoYXBlciBpbiB0aGUgd29ybGQu
CihhbmQgYWxzbyBuZXR3b3JrIG5hbWVzcGFjZXMsIHRoZSBmcV9jb2RlbCBmb3Igd2lmaSBzdHVm
ZiwgYW5kIHRoZQplbnRpcmUgZnFfY29kZWwgZGVwbG95bWVudCBpbiBnZW5lcmFsKS4KCkFsbCBh
bG9uZyAocmVnYXJkbGVzcyBvZiB0aGUgU0NFIGlkZWEpIEknZCBob3BlZCBmb3IgYSBzaW1wbGUs
CmNvbnNlcnZhdGl2ZSByZmMzMTY4IGNvbXBsaWFudCByZXNwb25zZSBpbiBCQlIgdG8gQ0UgbWFy
a2luZ3MsIGFuZCBJCmRpZG4ndCBsaWtlIGhvdyBtdWNoIEJCUiBpZ25vcmVzIHBhY2tldCBsb3Nz
IGFzIGEgc2lnbmFsIGluIHRoZSBmaXJzdApwbGFjZS4gSSB0aG91Z2h0LCB3aGVuIHRoZSBlbmQg
dXNlcnMgYXJlIGRlc3BlcmF0ZWx5IGluYm91bmQgc2hhcGluZwp0byBrZWVwIHRoZWlyIG5ldHdv
cmtzIHVzYWJsZSBmb3IgYWxsIHRyYWZmaWMsIGV4cGxpY2l0IHNpZ25hbGxpbmcKZnJvbSB0aGF0
IGV4aXN0aW5nIHVzZXJiYXNlIHdpdGggdGhhdCBleHBlY3RhdGlvbiBmb3IgYSByZWFzb25hYmxl
CnJlc3BvbnNlIHNlZW1lZCBzbyByZWFzb25hYmxlLi4uCgovbWUgbG9ncyBvdXQgZm9yIHRoZSBk
YXkKCi0tLS0tLS0tLS0gRm9yd2FyZGVkIG1lc3NhZ2UgLS0tLS0tLS0tCkZyb206ICdOZWFsIENh
cmR3ZWxsJyB2aWEgQkJSIERldmVsb3BtZW50IDxiYnItZGV2QGdvb2dsZWdyb3Vwcy5jb20+CkRh
dGU6IFR1ZSwgTWF5IDI4LCAyMDE5IGF0IDc6MTEgQU0KU3ViamVjdDogUmU6IFtiYnItZGV2XSBC
QlIgdjIgRUNOClRvOiBJbmdlbWFyIEpvaGFuc3NvbiA8aW5mb0BpamRhdGEuY29tPgpDYzogQkJS
IERldmVsb3BtZW50IDxiYnItZGV2QGdvb2dsZWdyb3Vwcy5jb20+CgoKT24gVHVlLCBNYXkgMjgs
IDIwMTkgYXQgODozNSBBTSBJbmdlbWFyIEpvaGFuc3NvbiA8aW5mb0BpamRhdGEuY29tPiB3cm90
ZToKPgo+IEhpCj4KPgo+IExvb2tpbmcgdGhyb3VnaCB0aGUgdjUuMi1yYzIgY29kZSBJIGNhbiBz
ZWUgdGhhdCBhIHBhcmFtZXRlciAnZGVsaXZlcmVkX2NlJyBpcyBkZWZpbmVkIGluIHRjcF9zb2Nr
IGJ1dCBvdGhlciB0aGFuIHRoYXQgSSBkb24ndCBzZWUgYW55IGV2aWRlbmNlIGZvciB0aGUgc3Vw
cG9ydCBvZiBFQ04gKEw0UykgaW4gQkJSdjIuIERvIHlvdSBzdGlsbCBwbGFuIHRvIGluY2x1ZGUg
TDRTIHN1cHBvcnQgZm9yIEJCUnYyID8KCgpIaSBJbmdlbWFyLAoKWWVzLCB3ZSBzdGlsbCBwbGFu
IG9uIGluY2x1ZGluZyBMNFMgc3VwcG9ydCBmb3IgQkJSdjIuCgpCQlJ2MiBpcyBub3QgdXBzdHJl
YW0gaW4gdGhlIExpbnV4IFRDUCBjb2RlIGJhc2UgeWV0LiBXZSBhcmUgd29ya2luZwpvbiBnZXR0
aW5nIHRoZSBjb2RlIHJlYWR5IGZvciBhIHByZS1yZWxlYXNlL1JGQyB2ZXJzaW9uIHRoYXQgd2Ug
cGxhbgpvbiBwb3N0aW5nIGF0OgogICBodHRwczovL2dpdGh1Yi5jb20vZ29vZ2xlL2JicgoKQnV0
IGluZGVlZCB0cC0+ZGVsaXZlcmVkIGFuZCB0cC0+ZGVsaXZlcmVkX2NlIGFyZSBwYXJ0IG9mIHRo
ZQppbmZyYXN0cnVjdHVyZSBpbnNpZGUgdGhlIExpbnV4IFRDUCBzdGFjayB0aGF0IEJCUnYyIG1h
a2VzIHVzZSBvZi4KCmNoZWVycywKbmVhbAoKCi0tCllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2Ug
YmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZQpHcm91cHMgIkJCUiBEZXZl
bG9wbWVudCIgZ3JvdXAuClRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCBy
ZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQKYW4gZW1haWwgdG8gYmJyLWRldit1bnN1YnNj
cmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2Vi
IHZpc2l0Cmh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9iYnItZGV2L0NBRFZuUXkl
M0RGNHJIZkx0Mk5tLTFyVUdrZk1qdWVqdV9tV2o1ZiUyQkRkcUZxQmRhSjgzb0ElNDBtYWlsLmdt
YWlsLmNvbS4KRm9yIG1vcmUgb3B0aW9ucywgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNv
bS9kL29wdG91dC4KCgotLSAKCkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93
d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtMjA1LTk3NDAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=
