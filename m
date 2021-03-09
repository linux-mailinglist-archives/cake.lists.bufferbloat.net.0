Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 566EB33300E
	for <lists+cake@lfdr.de>; Tue,  9 Mar 2021 21:39:11 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 81C213CB43;
	Tue,  9 Mar 2021 15:39:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1615322345;
	bh=5dnltYJHaz8Xs8quYLviqtYy6a5nn9DuwwFmintrdgY=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eaOZ1INcHN+P8wSsB2HOn0tx/2Etw66c2cgfuvzxfJsWu0xT24LBWtRyh/WUBs4xe
	 MzTFanuN+BRyzauQ8YU7ak1uPL705cWAoIDH71ecJtdenPxmMLyy4GDOP3nehmBfaq
	 hOqLuTuzHLeLI71qoggLdVpVh8/OyNNfhflgUyh8wTQqRvhugGPnL23ricRYMaZYqZ
	 1+Z/ypLMCpy7isuEtu/ZTrbwZVCqnQth79SEXQVZY75VDVo+b+MJDvgudr0DKSmc85
	 4K3O9TAJAsDcIKXFBGSSha0V4xDmp3r3plvVuh/59qkH06HkJiORL0X/HeK9dfMM0E
	 9SE2J1I4uEpSg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5F4A33B2A4;
 Tue,  9 Mar 2021 15:39:04 -0500 (EST)
Received: by mail-io1-xd2f.google.com with SMTP id p16so15466355ioj.4;
 Tue, 09 Mar 2021 12:39:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=GVAGeWg6XsRjUaRJD61DYxUa7s824hSAmjpfgaj/9dg=;
 b=E5NCOTzH75dBEP5FnH7HLaSJ69WoPAKgC7eFljQTd6qce0UmLMQtwccYFDXaPjhL6J
 NZz2zXNm8VpfFmXq6csSYYRVxACr5Voz+vmm9S3k9qimpbLz+ecr2JMm/jR/TrZtGk9O
 3UT2bRdZHc/Eeww9QZpBs71NcQyzyxoGGZPHpFdMVVt1T8b582IzQZB7W41AdWJFW0eD
 FjlINeEKaV9n9/vGqZrg6p5lkdnXjpOEmLWqSDQyJsNhRlAYdNdKpHGTu9qnenQWfXwv
 7uoQHGHvDQP4IGUPZrWBKIM7dVQiZbyb0yN/7+gDM3nZIsXO9TUYcKpIH2eww5Ykx0TX
 91eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=GVAGeWg6XsRjUaRJD61DYxUa7s824hSAmjpfgaj/9dg=;
 b=jx7oPq2BGQ44alkZvTac0qtO2MnIaXFW0jVPqtbflRxtcxFIjpnk9qH5LVPKEKuoRm
 ymzTRQQkODcx5eQF+ipNtmFudxCLAQbh+i/X1hljFveWuBZfHLuqTd9c9TN6KbLVMPW3
 Gfl1lfa9wonU/u7R1h9lwgN11H+WsbjkRgK+GB/pbwbP7q9Q1wOC175ghEjY35rSur7S
 4QdpNCeI3kkpS8dnpCtrX1ruzalaKjH38W7ZafDP9SiR4ZOk5TCCwyGdlgF9lpraks34
 N9OrAgxIPwhfNBG2md0a1vIB7rn8FMzpknP9P7SA2l5pVWGflCIzAZqE49fgeBmJ2BlP
 +eVg==
X-Gm-Message-State: AOAM530RUNXsg3RZXoDHHcif5GIXyfp9hPXVojbHBFOArV0qbgcxykwL
 xm+yJvurz0vQCntmm2W4tB5gPTj85HCDLUI2bWdgCy+AQUAqVQ==
X-Google-Smtp-Source: ABdhPJyGlYh5zRl4PHBiTyM9sxULbZ8rABs8KkyGkXLeGM86EdqFp/f8fg3UVfn6EUTRK1bHQM7rx/PCxPbr6NOnCAs=
X-Received: by 2002:a5d:9641:: with SMTP id d1mr23884878ios.123.1615322343562; 
 Tue, 09 Mar 2021 12:39:03 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 9 Mar 2021 12:38:52 -0800
Message-ID: <CAA93jw7wDiE4R+y2JV85wAZqcDpFtSetx47bmFQcr-8XAtCSpg@mail.gmail.com>
To: ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>, tsvwg IETF list <tsvwg@ietf.org>
Subject: [Cake] how to ecn again on osx and ios!!!
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

VGhlIGFkZGl0aW9uYWwgc3lzY3RsIHJlcXVpcmVkIHRvIHJlLWVuYWJsZSBlY24gbmVnb3RpYXRp
b24gYWx3YXlzIGlzCgpzdWRvIHN5c2N0bCAtdyBuZXQuaW5ldC50Y3AuZGlzYWJsZV90Y3BfaGV1
cmlzdGljcz0xCgpTZWUgYWxzbzoKaHR0cHM6Ly9naXRodWIuY29tL2FwcGxlLW9wZW5zb3VyY2Uv
eG51L2Jsb2IvbWFzdGVyL2JzZC9uZXRpbmV0L3RjcF9jYWNoZS5jI0wxNjQKCkl0IGRpc2FibGVz
IG1wdGNwIGFuZCB0Zm8sIHdoaWNoIGZvciBwdXJwb3NlcyBvZiBldmVuIGJhc2ljIHdvcmxkd2lk
ZQp0ZXN0aW5nIG9mIHRoZSBzdXJ2aXZhbCBvZiB0aGUgZWN0KDApIGFuZCBlY3QoMSkgY29kZXBv
aW50cywgZG9uJ3QKcmVhbGx5IG1hdHRlci4gSSBhbSBkZWxpcmlvdXMgd2l0aCBqb3kgdG8gYmUg
YWJsZSB0byB0ZXN0IHRoaXMgc3R1ZmYKYWdhaW4gZnJvbSBkZXZpY2VzIG1vcmUgcGVvcGxlIGhh
dmUsIGFuZCBJIGhvcGUgeSdhbGwgdHVybiBpdCBvbiBmb3IgYQp3aGlsZSwgb24gZXRoZXJuZXQv
d2lmaSBhbmQgbHRlLCBnZXQgYSBidW5jaCBvZiBjYXB0dXJlcyBhbmQgc2VlIHdoYXQKaGFwcGVu
cyBpbiBkYXkgdG8gZGF5IHVzZS4gSSB3b3VsZCBzbyBsb3ZlIHBhY2tldCBjYXB0dXJlcyBmcm9t
IG1hbnkKbWFueSB2YW50YWdlIHBvaW50cyBhZ2FpbnN0IHRoZSB3b3JsZHdpZGUgZmxlbnQgdGVz
dGluZyBuZXR3b3JrLgoKVGhvc2Ugb2YgeW91IHRoYXQgaGF2ZSByb290IGFjY2VzcyBvbiB5b3Vy
IGlwaG9uZXMgY2FuIGFsc28gdGVzdCBlY24KaW4gdGhpcyB3YXkuCgpBIGh1Z2UgdGhhbmtzIHRv
IENocmlzdG9waCBQYWFzY2ggb3ZlciBhdCBhcHBsZSBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuCgot
LSAKIkZvciBhIHN1Y2Nlc3NmdWwgdGVjaG5vbG9neSwgcmVhbGl0eSBtdXN0IHRha2UgcHJlY2Vk
ZW5jZSBvdmVyIHB1YmxpYwpyZWxhdGlvbnMsIGZvciBNb3RoZXIgTmF0dXJlIGNhbm5vdCBiZSBm
b29sZWQiIC0gUmljaGFyZCBGZXlubWFuCgpkYXZlQHRhaHQubmV0IDxEYXZlIFTDpGh0PiBDVE8s
IFRla0xpYnJlLCBMTEMgVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cg==
