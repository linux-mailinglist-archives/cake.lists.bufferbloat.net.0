Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 066EE3AE7ED
	for <lists+cake@lfdr.de>; Mon, 21 Jun 2021 13:10:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 59E553CB47;
	Mon, 21 Jun 2021 07:10:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624273835;
	bh=ehl9NgQc6MFTuhdj1GJH03MbcWv7XkUBn/Z1EYf8XJM=;
	h=To:From:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=TfY9CNOjr0boEG7jrnYsG/Bxu2vGUfVd0nVYCaQQETuuu0Dkt8vW913mcqrSNojzn
	 9IBwJ1IWSnR3nhCOVQYPQnlUvPzJOiw6HDBaMSsbTuFYpJH9AwXxrBY4OHrCfzBbPG
	 74lP9HJGSoaWoxqdDvrGc7jVpSSDwVzIzKxQ5SLebovaC6dF3+KXQBZGeYoRZyoZRF
	 PVFEb91G77EkexUow3W9Pi8tByY9GtXu/kh1EoAL8RE6QsMMUlBReK+XgoY22eaHe6
	 eUaagxYTWG5akbyT3+hFNGPJzL7M1+Hj6onZJKpLeNpTkAyr0pfPBuLbFZbJBJJS8c
	 +heUo/nfqEd+A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from c.mail.sonic.net (c.mail.sonic.net [64.142.111.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4885A3B29E;
 Sun, 20 Jun 2021 16:08:39 -0400 (EDT)
Received: from 107-137-68-211.lightspeed.sntcca.sbcglobal.net
 (107-137-68-211.lightspeed.sntcca.sbcglobal.net [107.137.68.211])
 (authenticated bits=0)
 by c.mail.sonic.net (8.15.1/8.15.1) with ESMTPSA id 15KK8X1N016630
 (version=TLSv1.2 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Sun, 20 Jun 2021 13:08:33 -0700
Received: from hgm (localhost [IPv6:::1])
 by 107-137-68-211.lightspeed.sntcca.sbcglobal.net (Postfix) with ESMTP id
 1AC6A28C157; Sun, 20 Jun 2021 13:08:33 -0700 (PDT)
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7.1
To: Matt Mathis <mattmathis@google.com>
From: Hal Murray <halmurray+bufferbloat@sonic.net>
In-Reply-To: Message from Matt Mathis <mattmathis@google.com> of "Sat,
 19 Jun 2021 18:59:06 -0700."
 <CAH56bmB3RMGCKhKzdOV8uW=8yjYrW0BNp7_AtKJG9krACj7x8Q@mail.gmail.com>
Mime-Version: 1.0
Date: Sun, 20 Jun 2021 13:08:33 -0700
Message-Id: <20210620200833.1AC6A28C157@107-137-68-211.lightspeed.sntcca.sbcglobal.net>
X-Sonic-CAuth: UmFuZG9tSVaFWIGgVepw14eBXH8lftW3NSYGnQ2cVBPXOxeP2kaueihYXvRlM0J6VJYUJ7YZ+gaVDNJjXmKEsp69kQjy1SB5PGpyPcNGd8Y=
X-Sonic-ID: C;OkT3SQPS6xG+yZ3Pl+vPsg== M;iKopSgPS6xG+yZ3Pl+vPsg==
X-Spam-Flag: No
X-Sonic-Spam-Details: -1.5/5.0 by cerberusd
X-Mailman-Approved-At: Mon, 21 Jun 2021 07:10:33 -0400
Subject: Re: [Cake] [Bloat]  access to cmsg from go?
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Hal Murray <halmurray+bufferbloat@sonic.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBJcyB0aGVyZSBydW5uaW5nIGNvZGUgaW4gQz8KClllcy4gIFRoZSBOVFBzZWMgY29kZSBpcyBm
dWxsIG9mICNpZmRlZiBrbHVkZ2VyeS4KClRoZSBDIEFQSSBzdGFydGVkIHdpdGggU09fVElNRVNU
QU1QIGZvciBtaWNyb3NlY29uZCBwcmVjaXNpb24gdGhlbiBhZGRlZCAKU09fVElNRVNUQU1QTlMg
Zm9yIG5hbm9zZWNvbmQgcHJlY2lzaW9uOiB0aW1ldmFsIHZzIHRpbWVzcGVjCgpUaGVyZSBpcyBh
bHNvIFNPX1RJTUVTVEFNUE5TIHZzIFNDTV9USU1FU1RBTVBOUwoKVGhlIGJhc2ljIGlkZWEgaXMg
dG8gdXNlIHJlY3Ztc2cgcmF0aGVyIHRoYW4gcmVjdi4gIEluIGFkZGl0aW9uIHRvIHRoZSBkYXRh
IApidWZmZXIsIHlvdSBmZWVkIGl0IGFub3RoZXIgYnVmZmVyIHdoZXJlIGl0IGNhbiBwdXQgbWV0
YSBkYXRhIGxpa2UgdGltZXN0YW1wcy4gCiBUaGVuIHlvdSBoYXZlIHRvIHNjYW4gdGhhdCBidWZm
ZXIgdG8gZmluZCB0aGUgcGFydCB5b3Ugd2FudC4gIEJvdGggYnVmZmVycyAKYXJlIHBhc3NlZCB0
byB0aGUga2VybmVsIHZpYSBhIHNpbmdsZSBtc2doZHIgcGFyYW1ldGVyICh3aGljaCBhbHNvIGhh
cyBhIApwb2ludGVyIGZvciB0aGUgYWRkciB5b3UgZ2V0IHZpYSByZWN2ZnJvbSkuCgpEZXRhaWxz
IGFyZSBpbiBtYW4gcmVjdm1zZyBhbmQgbWFuIGNtc2cKSSB0aG91Z2h0IHRoZXkgd2VyZSByZWFz
b25hYmx5IGNsZWFyLgoKV2l0aG91dCB0aGUgaWZkZWZzOgoKWW91IGhhdmUgdG8gc3RhcnQgYnkg
dXNpbmcgc2V0c29ja29wdCB0byB0dXJuIG9uIFNPX1RJTUVTVEFNUE5TLgogIHNldHNvY2tvcHQo
ZmQsIFNPTF9TT0NLRVQsIFNPX1RJTUVTVEFNUE5TLAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKGNvbnN0IHZvaWQgKikmb24sIHNpemVvZihvbikpKTsKClRoZSBzZXR1cCBjb2RlIGZv
ciByZWN2bXNnOgogICAgICAgIHN0cnVjdCBtc2doZHIgbXNnaGRyOwogICAgICAgIHN0cnVjdCBp
b3ZlYyBpb3ZlYzsKICAgICAgICBjaGFyIGNvbnRyb2xbMTAwXTsgICAvKiBGSVhNRTogTmVlZCBz
cGFjZSBmb3IgdGltZSBzdGFtcCBwbHVzIG92ZXJoZWFkIAoqLwoKICAgICAgICBpb3ZlYy5pb3Zf
YmFzZSAgICAgICAgPSAmcmItPnJlY3ZfYnVmZmVyOwogICAgICAgIGlvdmVjLmlvdl9sZW4gICAg
ICAgICA9IHNpemVvZihyYi0+cmVjdl9idWZmZXIpOwogICAgICAgIG1lbXNldCgmbXNnaGRyLCAn
XDAnLCBzaXplb2YobXNnaGRyKSk7CiAgICAgICAgbXNnaGRyLm1zZ19uYW1lICAgICAgID0gJnJi
LT5yZWN2X3NyY2FkcjsKICAgICAgICBtc2doZHIubXNnX25hbWVsZW4gICAgPSBmcm9tbGVuOwog
ICAgICAgIG1zZ2hkci5tc2dfaW92ICAgICAgICA9ICZpb3ZlYzsKICAgICAgICBtc2doZHIubXNn
X2lvdmxlbiAgICAgPSAxOwogICAgICAgIG1zZ2hkci5tc2dfZmxhZ3MgICAgICA9IDA7CiAgICAg
ICAgbXNnaGRyLm1zZ19jb250cm9sICAgID0gKHZvaWQgKikmY29udHJvbDsKICAgICAgICBtc2do
ZHIubXNnX2NvbnRyb2xsZW4gPSBzaXplb2YoY29udHJvbCk7CgpUaGUgYWN0dWFsIGNhbGw6CiAg
ICAgICAgYnVmbGVuICAgICAgICAgICAgICAgID0gcmVjdm1zZyhmZCwgJm1zZ2hkciwgMCk7CgpU
aGUgZXh0cmFjdCBjb2RlOgogICAgICAgIHN0cnVjdCB0aW1lc3BlYyAqICAgICAgIHRzcDsKICAg
ICAgICBjbXNnaGRyID0gQ01TR19GSVJTVEhEUihtc2doZHIpOwogICAgICAgIGlmIChOVUxMID09
IGNtc2doZHIpIHsKICAgICAgICAgICAgIGV4dHJhIGNoZWNraW5nIGJlY2F1c2UgdGhpcyBjb2Rl
IGlzIGluIGEgc3Vicm91dGluZQogICAgICAgICAgICAgZXJyb3IKICAgICAgICB9CiAgICAgICAg
aWYgKFNDTV9USU1FU1RBTVBOUyAhPSBjbXNnaGRyLT5jbXNnX3R5cGUpIHsKICAgICAgICAgICAg
IFRoZXJlIGlzIG9ubHkgb25lIC0tIG5vIG5lZWQgdG8gbG9vcAogICAgICAgICAgICAgZXJyb3IK
ICAgICAgICB9CiAgICAgICAgdHNwID0gKHN0cnVjdCB0aW1lc3BlYyAqKUNNU0dfREFUQShjbXNn
aGRyKTsKCgpBY3R1YWwgY29kZSBpcyBpbjoKICByZWFkX25ldHdvcmtfcGFja2V0IGluIG50cGQv
bnRwX2lvLmMKICBodHRwczovL2dpdGxhYi5jb20vTlRQc2VjL250cHNlYy8tL2Jsb2IvbWFzdGVy
L250cGQvbnRwX2lvLmMKYW5kCiAgZmV0Y2hfcGFja2V0c3RhbXAoKSBpbiBudHBkL250cF9wYWNr
ZXRzdGFtcC5jCiAgaHR0cHM6Ly9naXRsYWIuY29tL05UUHNlYy9udHBzZWMvLS9ibG9iL21hc3Rl
ci9udHBkL250cF9wYWNrZXRzdGFtcC5jCgoKLS0gClRoZXNlIGFyZSBteSBvcGluaW9ucy4gIEkg
aGF0ZSBzcGFtLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
