Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9321F4B5C
	for <lists+cake@lfdr.de>; Wed, 10 Jun 2020 04:23:50 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 713883CB46;
	Tue,  9 Jun 2020 22:23:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1591755820;
	bh=3iQvsNRxBK7thvLIvznrNEB28vqlfHqdtIT+8x01D0w=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fP4cTEKr9C4cH6qZPjwN2eFGuCf5SlR1o08p+D00uA9tQGw6iQFfNIOWSv+lhoFMH
	 WM5NQR/FN0WfOZRrNPiLwzTXEquIdFPc7XsCP51apWYHM1qhnKEPQgshS0Us0mw/tZ
	 ZPcz6h00Q8/Z1YRtJxTfR9qkiSDgiim4Gx4FH0WugGfOZJ2+UNqRhGWN8Pwz0pD06T
	 vqxrfAGxeQ9y/nqJDg9m6OTjiJI3U89xct5AROl/dSKPWJR40O/QRVQqrTTAVdbJ5e
	 Pw39nFHuJMtOWg3wZ2HKk+/4d7nhuyHwvMQ8I+YUqyTw3pLc4IKVlbggVGGkXwpzty
	 L/ToK+tMYBtQQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 47B003B29E;
 Tue,  9 Jun 2020 22:23:39 -0400 (EDT)
Received: by mail-io1-xd41.google.com with SMTP id r77so484385ior.3;
 Tue, 09 Jun 2020 19:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=HrIylDxvL50IDwaqjv9N0gBLeAndtfpVXI4eOlX8SjU=;
 b=T0aTkJpXKnB1jUHlIaNCpjgss7jiYNApZ9rPsOu4c3bcx+V28RjIegGWJa/4VupCp/
 3ETvogBgEKr7qeB1tLm64g4qwJBOE1koHknczjyfB9yPshVJRIlMfuIl53isbmgsHkDn
 p46KiNq0rqvOOGZConnyfdU9SEstDpOj2Dze2MI4TX8hBsNTCEkBnF9Yr29RLO2dasTt
 Wby9EZWaeUFslKqWFcbaGi/TpdkYFXEBqOlvTjjY5Gwt09MimhXxVrYiZ8wNGFp/37wJ
 UQfOTHU/LQF2DRDCodT7hd1kV9zOVnopgNxjSjMPBFn2adHSy7TSBdOUzLcpBTlD71u0
 ACuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=HrIylDxvL50IDwaqjv9N0gBLeAndtfpVXI4eOlX8SjU=;
 b=L/RYK4DT49pEvGU5lhnL/Ndqgc1HdUob38ou0tqHDylMxb4HJX/Vd4Tf35LtlYhbSw
 INdJ7Bcyi3PrvoJkTZJRrj6NcW40guc03AFpVvHK0qp/4y2zyq6U0AJOPepzdMZZ3R3y
 1WGbnlfumOZskb1HM1I2DJQ0l+1NjQyerMHlTSTI/Hg644dyDEhhrusuHT5E8JnrGk+c
 4QEqOnc1W+SeyNgf9dXz2EQRu4+A65G7fXLBy16e19rjG6HVRq+zGvyKUuTeEOZUMJw0
 IUZ8VZNbfNeewkkiuOso3b0TaNnuXnMNJRqgN1wZTAA5xBVOsspxpPoaU7TjI2dIw1XX
 FW3g==
X-Gm-Message-State: AOAM532d7n9Kf77862UH0ouRhRaFbSgYq1gFFMxFQq4fm+fxmytZM1fH
 OG5czlQEOLGwxJaVWjktv6gYxpx0xUESYY3YgxUqvA==
X-Google-Smtp-Source: ABdhPJyfHd/SAi/lUxkuJvibwdmkpxAXu+maRuqdmQ5gN4xBqQMdtCzgeOCMQDdTpfIpivk/Lx4IK59mQI2RWtV39Eo=
X-Received: by 2002:a02:a895:: with SMTP id l21mr1080023jam.82.1591755818426; 
 Tue, 09 Jun 2020 19:23:38 -0700 (PDT)
MIME-Version: 1.0
References: <CALGR9oZ9u=huobnQig0mMPS=-Fu7Mu3q8GHLTBOxd2W5u0h_kw@mail.gmail.com>
 <CALGR9oZ-MzUh6JZrM7w97i=64OEZ3JzjzhVir2RBTWm210Fw7w@mail.gmail.com>
In-Reply-To: <CALGR9oZ-MzUh6JZrM7w97i=64OEZ3JzjzhVir2RBTWm210Fw7w@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 9 Jun 2020 19:23:27 -0700
Message-ID: <CAA93jw6Z_5U0KCC8e0VhVyPkba4O7PtNayur-TjDvO+QJ=6=tA@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] Fwd: [tsvwg] Fwd: Working Group Last Call: QUIC protocol
	drafts
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

SSBhbSBoYXBweSB0byBzZWUgcXVpYyBpbiBsYXN0IGNhbGwuIHRoZXJlIGFyZSBhIHRvbiBvZiBp
bnRlcm9wZXJibGUKaW1wbGVtZW50YXRpb25zIG5vdy4KCi0tLS0tLS0tLS0gRm9yd2FyZGVkIG1l
c3NhZ2UgLS0tLS0tLS0tCkZyb206IEx1Y2FzIFBhcmR1ZSA8bHVjYXNwYXJkdWUuMjQuN0BnbWFp
bC5jb20+CkRhdGU6IFR1ZSwgSnVuIDksIDIwMjAgYXQgNzowOCBQTQpTdWJqZWN0OiBbdHN2d2dd
IEZ3ZDogV29ya2luZyBHcm91cCBMYXN0IENhbGw6IFFVSUMgcHJvdG9jb2wgZHJhZnRzClRvOiBI
VFRQIFdvcmtpbmcgR3JvdXAgPGlldGYtaHR0cC13Z0B3My5vcmc+LCA8dHN2d2dAaWV0Zi5vcmc+
LCA8dGxzQGlldGYub3JnPgpDYzogTWFyayBOb3R0aW5naGFtIDxtbm90QG1ub3QubmV0PgoKCkhl
bGxvIGZvbGtzLAoKUGxlYXNlIHNlZSB0aGUgZm9yd2FyZGVkIFdvcmtpbmcgR3JvdXAgTGFzdCBD
YWxsIGFubm91bmNlbWVudCBmb3IgdGhlClFVSUMgcHJvdG9jb2wgZHJhZnRzLi4KClRoZSBRVUlD
IFdHIHdpbGwgb25seSBjb25zaWRlciBmZWVkYmFjayBkaXJlY3RlZCB0b3dhcmRzIGl0IHNvIHBs
ZWFzZQpkbyBub3QgcmVzcG9uZCB0byB0aGlzIHRocmVhZC4gSW5zdGVhZCwgcmV2aWV3IGNvbW1l
bnRzIG5lZWQgdG8gYmUKb3BlbmVkIG9uIHRoZSBHaXRIdWIgcmVwbyBvciBzZW50IHRvIHRoZSBR
VUlDIG1haWxpbmcgbGlzdCBhcwpkZXNjcmliZWQgaW4gdGhlIGd1aWRhbmNlIGJlbG93LgoKQ2hl
ZXJzLApMYXJzLCBMdWNhcyBhbmQgTWFyawpRVUlDIFdHIENoYWlycwoKLS0tLS0tLS0tLSBGb3J3
YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KRnJvbTogTHVjYXMgUGFyZHVlIDxsdWNhc3BhcmR1ZS4y
NC43QGdtYWlsLmNvbT4KRGF0ZTogV2VkLCBKdW4gMTAsIDIwMjAgYXQgMjozNiBBTQpTdWJqZWN0
OiBXb3JraW5nIEdyb3VwIExhc3QgQ2FsbDogUVVJQyBwcm90b2NvbCBkcmFmdHMKVG86IFFVSUMg
V0cgPHF1aWNAaWV0Zi5vcmc+CgoKSGVsbG8sCgpBZnRlciBtb3JlIHRoYW4gdGhyZWUgYW5kIGEg
aGFsZiB5ZWFycyBhbmQgc3Vic3RhbnRpYWwgZGlzY3Vzc2lvbiwgYWxsCjg0NSBvZiB0aGUgZGVz
aWduIGlzc3VlcyByYWlzZWQgYWdhaW5zdCB0aGUgUVVJQyBwcm90b2NvbCBkcmFmdHMgaGF2ZQpn
YWluZWQgY29uc2Vuc3VzIG9yIGhhdmUgYSBwcm9wb3NlZCByZXNvbHV0aW9uLiBJbiB0aGF0IHRp
bWUgdGhlCnByb3RvY29sIGhhcyBiZWVuIGNvbnNpZGVyYWJseSB0cmFuc2Zvcm1lZDsgaXQgaGFz
IGJlY29tZSBtb3JlIHNlY3VyZSwKbXVjaCBtb3JlIHdpZGVseSBpbXBsZW1lbnRlZCwgYW5kIGhh
cyBiZWVuIHNob3duIHRvIGJlIGludGVyb3BlcmFibGUuCkJvdGggdGhlIENoYWlycyBhbmQgdGhl
IEVkaXRvcnMgZmVlbCB0aGF0IGl0IGlzIHJlYWR5IHRvIHByb2NlZWQgaW4Kc3RhbmRhcmRpc2F0
aW9uLgoKVGhlcmVmb3JlLCB0aGlzIGVtYWlsIGFubm91bmNlcyBhIFdvcmtpbmcgR3JvdXAgTGFz
dCBDYWxsIChXR0xDKSBmb3IKdGhlIGZvbGxvd2luZyBRVUlDIGRvY3VtZW50czoKCiogUVVJQyBU
cmFuc3BvcnQKICBodHRwczovL3Rvb2xzLmlldGYub3JnL2h0bWwvZHJhZnQtaWV0Zi1xdWljLXRy
YW5zcG9ydC0yOQoKKiBRVUlDIExvc3MgRGV0ZWN0aW9uIGFuZCBDb25nZXN0aW9uIENvbnRyb2wK
ICBodHRwczovL3Rvb2xzLmlldGYub3JnL2h0bWwvZHJhZnQtaWV0Zi1xdWljLXJlY292ZXJ5LTI5
CgoqIFVzaW5nIFRMUyB0byBTZWN1cmUgUVVJQwogIGh0dHBzOi8vdG9vbHMuaWV0Zi5vcmcvaHRt
bC9kcmFmdC1pZXRmLXF1aWMtdGxzLTI5CgoqIFZlcnNpb24tSW5kZXBlbmRlbnQgUHJvcGVydGll
cyBvZiBRVUlDCiAgaHR0cHM6Ly90b29scy5pZXRmLm9yZy9odG1sL2RyYWZ0LWlldGYtcXVpYy1p
bnZhcmlhbnRzLTA5CgoqIEhUVFAvMwogIGh0dHBzOi8vdG9vbHMuaWV0Zi5vcmcvaHRtbC9kcmFm
dC1pZXRmLXF1aWMtaHR0cC0yOQoKKiBRUEFDSyBIZWFkZXIgQ29tcHJlc3Npb24gZm9yIEhUVFAv
MwogIGh0dHBzOi8vdG9vbHMuaWV0Zi5vcmcvaHRtbC9kcmFmdC1pZXRmLXF1aWMtcXBhY2stMTYK
ClRoZSBXR0xDIHdpbGwgcnVuIGZvciBmb3VyIHdlZWtzLCBlbmRpbmcgb24gOCBKdWx5IDIwMjAu
CgpBcyBhIHJlbWluZGVyLCB3ZSBoYXZlIGJlZW4gb3BlcmF0aW5nIHVuZGVyIHRoZSBMYXRlLVN0
YWdlIFByb2Nlc3M7CnNlZSBodHRwczovL2dpdGh1Yi5jb20vcXVpY3dnL2Jhc2UtZHJhZnRzL2Js
b2IvbWFzdGVyL0NPTlRSSUJVVElORy5tZCNsYXRlLXN0YWdlLXByb2Nlc3MuCkluIHRoZW9yeSwg
dGhpcyBtZWFucyB0aGF0IHRoZSBjb250ZW50cyBvZiB0aGUgZHJhZnRzIGFib3ZlIGFscmVhZHkK
aGF2ZSBjb25zZW5zdXMuIEhvd2V2ZXIsIHRoZSBDaGFpcnMgd291bGQgbGlrZSB0byBhY3RpdmVs
eSByZWFmZmlybQp0aGF0IGNvbnNlbnN1cyBhbmQgc3RhcnQgdGhlIHByb2Nlc3Mgb2Ygd2lkZXIg
cmV2aWV3IHRocm91Z2ggYSBmb3JtYWwKV0dMQy4KClBsZWFzZSByZXZpZXcgdGhlIGRvY3VtZW50
cyBhYm92ZSBhbmQgb3BlbiBpc3N1ZXMgZm9yIHlvdXIgcmV2aWV3CmNvbW1lbnRzIGluIG91ciBy
ZXBvc2l0b3J5IGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9xdWljd2cvYmFzZS1kcmFmdHMuCllvdSBt
YXkgYWxzbyBzZW5kIGNvbW1lbnRzIHRvIHF1aWNAaWV0Zi5vcmcuCgpJc3N1ZXMgcmFpc2VkIGR1
cmluZyBXR0xDIHdpbGwgYmUgaGFuZGxlZCBpbiBhY2NvcmRhbmNlIHdpdGggdGhlCkxhdGUtU3Rh
Z2UgUHJvY2VzcyBkZWZpbmVkIGluIHRoZSBDb250cmlidXRpb24gR3VpZGVsaW5lcyAoc2VlIGxp
bmsKYWJvdmUpLiBQbGVhc2Ugbm90ZSB0aGF0IGRlc2lnbiBpc3N1ZXMgdGhhdCByZXZpc2l0IGEg
dG9waWMgd2hlcmUKdGhlcmUncyBhbHJlYWR5IGRlY2xhcmVkIGNvbnNlbnN1cyAoc2VlCmh0dHBz
Oi8vZ2l0aHViLmNvbS9xdWljd2cvYmFzZS1kcmFmdHMvaXNzdWVzP3E9aXMlM0FjbG9zZWQrbGFi
ZWwlM0FoYXMtY29uc2Vuc3VzKQpuZWVkIHRvIHByb3ZpZGUgY29tcGVsbGluZyByZWFzb25zIHRv
IHdhcnJhbnQgcmVvcGVuaW5nIHRoZQpkaXNjdXNzaW9uLgoKQXMgcGFydCBvZiB0aGlzIFdHTEMs
IHdlIHNlZWsgY29uc2Vuc3VzIG9uIHRoZSByZW1haW5pbmcgb3BlbiBkZXNpZ24KaXNzdWUgIzM2
NjEg4oCcSW5jbHVkZSBlcG9jaCBpbiB0aGUgQUFEIG9yIHRoZSBub25jZT/igJ0KKGh0dHBzOi8v
Z2l0aHViLmNvbS9xdWljd2cvYmFzZS1kcmFmdHMvaXNzdWVzLzM2NjEpLiBUaGUgcHJvcG9zZWQK
cmVzb2x1dGlvbiBmb3IgdGhpcyBpc3N1ZSBpcyB0byBjbG9zZSB3aXRoIG5vIGFjdGlvbiwgd2hp
Y2ggbWVhbnMgdGhhdAp0aGUgZHJhZnRzIGFib3ZlIGFscmVhZHkgcmVmbGVjdCB0aGlzIGVtZXJn
aW5nIGNvbnNlbnN1cy4KClN1YmplY3QgdG8gdGhlIGZlZWRiYWNrIHJlY2VpdmVkIGR1cmluZyB0
aGlzIFdHTEMsIGEgc3Vic2VxdWVudApzbWFsbGVyIFdHTEMgbWF5IGJlIHJ1biBpbiB0aGUgbmVh
ciBmdXR1cmUgdG8gY29uZmlybSBhbnkgY2hhbmdlcyB0bwp0aGUgZHJhZnRzIG1hZGUgYmV0d2Vl
biBub3cgYW5kIHRoZW4uCgpUaGUgQXBwbGljYWJpbGl0eSBhbmQgTWFuYWdlYWJpbGl0eSBkcmFm
dHMgaGF2ZSBzb21lIGRlcGVuZGVuY2llcyBvbgp0aGUgY29yZSBkcmFmdHMsIHNvIHdlJ2xsIHJ1
biBzZXBhcmF0ZSBXR0xDcyBmb3IgdGhlbS4KCkNoZWVycywKCkxhcnMsIEx1Y2FzIGFuZCBNYXJr
ClFVSUMgV0cgQ2hhaXJzCgoKLS0gCiJGb3IgYSBzdWNjZXNzZnVsIHRlY2hub2xvZ3ksIHJlYWxp
dHkgbXVzdCB0YWtlIHByZWNlZGVuY2Ugb3ZlciBwdWJsaWMKcmVsYXRpb25zLCBmb3IgTW90aGVy
IE5hdHVyZSBjYW5ub3QgYmUgZm9vbGVkIiAtIFJpY2hhcmQgRmV5bm1hbgoKZGF2ZUB0YWh0Lm5l
dCA8RGF2ZSBUw6RodD4gQ1RPLCBUZWtMaWJyZSwgTExDIFRlbDogMS04MzEtNDM1LTA3MjkKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=
