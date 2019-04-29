Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E13DA12
	for <lists+cake@lfdr.de>; Mon, 29 Apr 2019 02:17:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E211F3CB3A;
	Sun, 28 Apr 2019 20:17:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556497074;
	bh=Qcn2NlABrobm6GXSVLI7DR2M6JrnbtfYm3aqWl3iYZw=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b8s3XjcEP8IttUtzunom3TlniyF5EV5c9O+tE/Z/KAjiB4dtVvnXItPzibyWkyoVu
	 0JRZcprCU9R3Gp1ltb85QkhuCaML6Nn43Y1C+MU6dyqJ7shnRGD7vj7AWBTcDSPCY/
	 FA/l6ZJZs6Qd22mRIZN10cpVc5YkxVPqbUA27EAfyyS7HAdBgvEIYtwAYqXb09AMS5
	 QUrRwki7oxa5B5lu+cXXEelILtLuvyMzmM6oHyFLW7gakYn1OZ+XMo3q9BN5kBYcrl
	 X8GeswbhWDOTzOXLl4pue7oVCMvTpgEoeg5zOWHt10RUctnsJ5FoA3IwIZeQej9ex1
	 +GxYvcTdBUnRw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D84753B29E
 for <cake@lists.bufferbloat.net>; Sun, 28 Apr 2019 20:17:53 -0400 (EDT)
Received: by mail-lf1-x132.google.com with SMTP id h18so6422615lfj.11
 for <cake@lists.bufferbloat.net>; Sun, 28 Apr 2019 17:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=X7LLiL9VkheFasBWJ4o2EyhpIS8FJ+WA5j8fc2Ww+1g=;
 b=uJbYbpj36twMLQmsgIcnADi3Tz722JD8NGXjWJX2UGb+GoKTBk/+aDNmEPIwnftiQY
 8xUq9dls71J2wtlrigj9eoE3XakgVLB5gZZ9w7CYXYN5wMrpATuZSiwWO1aivfPXZ8Ir
 VR2RcYrTT5kWD6lzB1CFx5R+J2z0v+3oWRNrGR/hvl2Ppio4oAYQU6YeWpblrBa4h9Ry
 g8NTZ+LXANbqnCCKyjrqIlYOlVg1nYSa3mefdexPRZNwgiE6PkuCe5I6Z44MjBy7ZXyR
 3bYalYY6k8n7Cs9KAbEN4jJgiavgc7ZFRhg7NLAwtarDc7IHPhU6Jh46AsdYwNMp7MW8
 xoQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=X7LLiL9VkheFasBWJ4o2EyhpIS8FJ+WA5j8fc2Ww+1g=;
 b=NvY7B7XTO8Z4Jv6y+nsiJDz3qJ5zPrOiM4VqomkOKinRq4znBL6XYGLqGAYkABAk9o
 uvofCV2168IizzO+4TAkui/4ipE1dZEdELt4b5FPbAAJxqU0m0XVXUfKBPING2gMzmfP
 JezaMvrm5gRhAI9qk914yy6TP21ehXXSSb6LY/6oinGQOqT7Nm6nf1IRRbxj3im4Qh4n
 ivPLjCq68YCVOBWxIWloIrRtVrFo1RxllVJQitl+im/VzQqOww/yMIKj4erejR39IV0f
 9s3gfLOqTQM3Mbzh258xUWWOTo5lFY2FS5XqkfBNgtrpFCJBNI38wt7RlZTxDKxXhhzb
 FJgA==
X-Gm-Message-State: APjAAAX6hZZuVbjKrPa7PdXmWRz0bnAXA3NVHGjtrs1TkXXBoyWGEw3u
 LJGNNlFInUiwYYLv45V2lOM=
X-Google-Smtp-Source: APXvYqxqKUw2vuHYXIwfSY6PMQrX8QHyyeDHC55NGCtITR7SEYTTNraIPg/UL87QJUvdjXWGASDe6Q==
X-Received: by 2002:a19:7d04:: with SMTP id y4mr13234979lfc.153.1556497072507; 
 Sun, 28 Apr 2019 17:17:52 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-240-147-nat-p.elisa-mobile.fi.
 [83.245.240.147])
 by smtp.gmail.com with ESMTPSA id k4sm3472763lja.18.2019.04.28.17.17.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 17:17:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAFp5xQ5BBNZF-eTiZo+uZYc+M1zWZYpA2rtaXUeo-ifgRmVM2Q@mail.gmail.com>
Date: Mon, 29 Apr 2019 03:17:50 +0300
Message-Id: <CCD603A1-7DBC-473E-9FE6-F0D901404D22@gmail.com>
References: <CAFp5xQ5BBNZF-eTiZo+uZYc+M1zWZYpA2rtaXUeo-ifgRmVM2Q@mail.gmail.com>
To: Shefali Gupta <shefaligups11@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Testing Scenarios for Validation of Ack_Filter
 implementation in ns-3
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

PiBPbiAyMiBBcHIsIDIwMTksIGF0IDI6NDUgcG0sIFNoZWZhbGkgR3VwdGEgPHNoZWZhbGlndXBz
MTFAZ21haWwuY29tPiB3cm90ZToKPiAKPiBJdCB3b3VsZCByZWFsbHkgaGVscCBpZiB5b3UgY291
bGQgc3VnZ2VzdCB0aGUgdGVzdGluZyBzY2VuYXJpb3Mgc28gdGhhdCBJIGNhbiB2YWxpZGF0ZSBB
Y2tfRmlsdGVyIGltcGxlbWVudGF0aW9uIGluIG5zLTMuCgpJdCBtYXkgaGVscCB0byB1bmRlcnN0
YW5kIHRoZSBkZXNpZ24gaW50ZW50aW9ucyBvZiB0aGUgYWNrLWZpbHRlcjoKCjE6IFJlZHVjZSB0
aGUgYmFuZHdpZHRoIGNvbnN1bWVkIGJ5IHB1cmUgYWNrcywgYW5kIHBvc3NpYmx5IGFsc28gdGhl
IGxhdGVuY3kgb2YgdGhlIGFjayBzdHJlYW0uCgoyOiBBdm9pZCBsb3NpbmcgYW55IHJlbGV2YW50
IGluZm9ybWF0aW9uIGZyb20gdGhlIGFjayBzdHJlYW0uICBUaGlzIHBhcnRpY3VsYXJseSBpbmNs
dWRlcyBub3QgZXJhc2luZyBhbnkgInRhaWwiIGFja3MgYW5kIG5vdCBpbnRlcmZlcmluZyB3aXRo
IGFueSBTWU4sIEZJTiBvciBSU1QgcGFja2V0cy4KClRvIHRlc3QgdGhlIGxhdHRlciwgeW91IHJl
YWxseSBuZWVkIGEgY29ycmVjdG5lc3MgYW5hbHlzaXMsIGJ1dCBpdCBzaG91bGQgYmUgc3VmZmlj
aWVudCB0byBvYnNlcnZlIG5vIHJlZHVjdGlvbiBpbiBwZXJmb3JtYW5jZSBhY3Jvc3MgYSB3aWRl
IHJhbmdlIG9mIHNjZW5hcmlvcywgaW5jbHVkaW5nIHRob3NlIGludm9sdmluZyBhcHBsaWNhdGlv
bi1saW1pdGVkIHdvcmtsb2FkcyAod2l0aCBhIGxvdCBvZiB0YWlsIGFja3MpLCBtYW55IHNob3J0
IGZsb3cgc3RhcnRzLCBjb250aW51b3VzIHRyYW5zZmVycyB3aXRoIHZhcmlvdXMgYW1vdW50cyBv
ZiBwYWNrZXQgbG9zcyBpbiB0aGUgZm9yd2FyZCBkaXJlY3Rpb24sIGFuZCBjYXNlcyB3aGVyZSBh
Y2stZmlsdGVyIGFjdGl2aXR5IGlzIGludGVuc2UuCgpUaGF0IGxhc3Qgc2NlbmFyaW8gd2lsbCBp
bnZvbHZlIGEgZGVtb25zdHJhdGlvbiBvZiBwb2ludCAxLCB3aGljaCBpcyBiZXN0IGFjaGlldmVk
IGJ5IHNldHRpbmcgdXAgYW4gYXN5bW1ldHJpYyBsaW5rLCB0aGVuIHJ1bm5pbmcgb25lIGZsb3cg
b3ZlciB0aGUgIndpZGUiIGRpcmVjdGlvbiBidXQgbWFueSBmbG93cyBvdmVyIHRoZSAibmFycm93
IiBkaXJlY3Rpb24uICBBIDEwOjEgYmFuZHdpZHRoIHJhdGlvIHdpdGggYSAxOjUwIGZsb3cgc2V0
dXAgc2hvdWxkIGRvIHRoZSB0cmljay4gIFRoZSBhY2sgZmlsdGVyIHNob3VsZCBncmVhdGx5IGlt
cHJvdmUgdGhlIHRocm91Z2hwdXQgb2YgdGhlIHNpbmdsZSwgZmFzdCBmbG93LCBhbmQgYWxzbyBm
cmVlIHVwIGEgbGl0dGxlIGJhbmR3aWR0aCBvbiB0aGUgc2xvdyBzaWRlIGZvciB0aGUgbWFueSBm
bG93cy4KCkFzIGFuIGFzaWRlLCBpbiB0aGUgY3VycmVudCBDYWtlIHZlcnNpb24gd2UgdHJlYXQg
dGhlIGZvcm1lciBOUyBiaXQgdGhlIHNhbWUgd2F5IGFzIHRoZSBFQ0UgYW5kIENXUiBiaXRzIGlu
IHRoZSBhY2sgZmlsdGVyLCBzbyB5b3UgbWF5IHdhbnQgdG8gZW5zdXJlIHRoaXMgdHdlYWsgaXMg
YWxzbyBtYWRlIGluIHlvdXIgdmVyc2lvbi4gIFRoaXMgaXMgdG8gaW1wcm92ZSBpdHMgYmVoYXZp
b3VyIG9uIFNDRSB0cmFmZmljLiAgVGhlIGNoYW5nZSBzaG91bGQgaGF2ZSBubyBlZmZlY3Qgb24g
bm9uLVNDRSB0cmFmZmljLgoKIC0gSm9uYXRoYW4gTW9ydG9uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==
