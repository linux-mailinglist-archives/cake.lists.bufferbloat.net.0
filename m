Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E02B04318D2
	for <lists+cake@lfdr.de>; Mon, 18 Oct 2021 14:18:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F04213CB46;
	Mon, 18 Oct 2021 08:18:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634559513;
	bh=zVvzZfXl+fPByE8c3WgYn61l7QkVqq13SFD8kr7xP0I=;
	h=From:In-Reply-To:To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=NOPgA+IuactijD/JuZ+LvZuykmf2k+nrl3saiUGEPrnk88cyMHpZsl04JjwUTV4FJ
	 VNPfdwyIRpuwUNGSvDzxAbT7sKy67nRtFsFzcqiX1HFHppmCzVHVsIf8dQDO5lVjoH
	 n3Wfm+E4NaqIEfnL/kAPq1wlTS7f639djp4BCym2iGipn/rLsxVGkzGivRQChqmD0z
	 2eT8r6W8SyGmzz9ys5+BhkYcJ+q6rblvoNEXrwdK59vNECiiZcezx7DmLgrLitxmZ7
	 jPr8VB4QCF8K5gL+WOEk+2kvEhEs0p8RQfUJtakFIqn1EOVFTbeP9qq6jiXS1GfG0+
	 3Z4uty5Y4vTJw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from gndrsh.dnsmgr.net (br1.CN84in.dnsmgr.net [69.59.192.140])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CEF653B29D;
 Sat, 16 Oct 2021 12:58:17 -0400 (EDT)
Received: from gndrsh.dnsmgr.net (localhost [127.0.0.1])
 by gndrsh.dnsmgr.net (8.13.3/8.13.3) with ESMTP id 19GGwFeZ051662;
 Sat, 16 Oct 2021 09:58:15 -0700 (PDT)
 (envelope-from 4bone@gndrsh.dnsmgr.net)
Received: (from 4bone@localhost)
 by gndrsh.dnsmgr.net (8.13.3/8.13.3/Submit) id 19GGwEm2051661;
 Sat, 16 Oct 2021 09:58:14 -0700 (PDT) (envelope-from 4bone)
From: "Rodney W. Grimes" <4bone@gndrsh.dnsmgr.net>
Message-Id: <202110161658.19GGwEm2051661@gndrsh.dnsmgr.net>
In-Reply-To: <95231AF9-DCCA-4D41-9BF4-8F55307F45F6@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Date: Sat, 16 Oct 2021 09:58:14 -0700 (PDT)
X-Mailer: ELM [version 2.4ME+ PL121h (25)]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Oct 2021 08:18:32 -0400
Subject: Re: [Cake] [Ecn-sane]    l4s kernel submission
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
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Sm9uYXRoYW4sIGV0YywKCkkgd2VudCBmaXNoaW5nIGRvd24gdGhlIHJhYmJpdCBob2xlIGFuZCB0
aGluayBJIHNlZQpob3cgdGhlIG1hc3NlcyBoYXZlIGJlZW4gYnJhaW53YXNoZWQgYWJvdXQgTDRT
LCBhdApsZWFzdCBwYXJ0aWFsbHkuICBJdCBtaWdodCBiZSB3b3J0aCBzcGVuZGluZyBzb21lCmVm
Zm9ydCB0byAiZGVidW5rIiB0aGUgY2xhaW1zIGluIHRoZSBwYXBlcjoKCWh0dHBzOi8vYm9iYnJp
c2NvZS5uZXQvcHJvamVjdHMvbGF0ZW5jeS9kY3R0aF9qb3VybmFsX2RyYWZ0MjAxOTA3MjYucGRm
CgpJIGFtIEVYVFJFQU1MWSBjb25jZXJuZWQgYWJvdXQgdGhlIGZvbGxvd2luZyBtaXNzIGxlYWRp
bmcKYXNzZXJ0aW9ucyBieSB0aGUgYXV0aG9yczoKCSIKQkVHSU4tUVVPVEUKVi4gIERFUExPWU1F
TlRDT05TSURFUkFUSU9OUwogIEEuICBTdGFuZGFyZGl6YXRpb24gUmVxdWlyZW1lbnRzCiAgICBU
aGUgSUVURiBoYXMgdGFrZW4gb24gTDRTIHN0YW5kYXJkaXphdGlvbiB3b3JrIFsxM10uIFsxOV0K
ICAgIGNvbnNpZGVycyB0aGUgcHJvcyBhbmQgY29ucyBvZiB2YXJpb3VzIGNhbmRpZGF0ZSBpZGVu
dGlmaWVycyBmb3IKICAgIEw0UyAgYW5kICBmaW5kcyAgdGhhdCAgbm9uZSAgYXJlICB3aXRob3V0
ICBwcm9ibGVtcywgIGJ1dCAgcHJvcG9zZXMKICAgIEVDVCgxKSAgYXMgIHRoZSAgbGVhc3QgIHdv
cnN0LiAgQXMgIGEgIGNvbnNlcXVlbmNlLCAgdGhlICBJRVRGICBoYXMKICAgIHVwZGF0ZWQgdGhl
IEVDTiBzdGFuZGFyZCBhdCB0aGUgSVAgbGF5ZXIgKHY0IGFuZCB2NikgdG8gbWFrZQogICAgdGhl
IEVDVCgxKSBjb2RlcG9pbnQgYXZhaWxhYmxlIGZvciBleHBlcmltZW50YXRpb24gWzddLgoKIFs3
XSAgIEJMQUNLLCBELiAgIFJlbGF4aW5nICBSZXN0cmljdGlvbnMgIG9uICBFeHBsaWNpdCAgQ29u
Z2VzdGlvbiAgTm90aWZpY2F0aW9uCiAgICAgIChFQ04pIEV4cGVyaW1lbnRhdGlvbi4gIFJlcXVl
c3QgZm9yIENvbW1lbnRzIFJGQzgzMTEsIFJGQyBFZGl0b3IsSmFuLiAyMDE4CkVORC1RVU9URQoK
Ck15IHByb2JsZW0gd2l0aCB0aGlzICJjbGFpbSIgaXMgdGhhdCBpdCBpcyBtYWRlIGluIHRoZSBu
YW1lIG9mCnRoZSBJRVRGLCB3aGljaCBpcyBub3QgdHJ1ZS4gIEJvYiBCcmlzY29lIGFuZCBvdGhl
cnMgYXJlIHdobwphcmUgbWFraW5nIHRoZXNlIGNsYWltcywgdGhlIElFVEYgaGFzIE5PVCB5ZXQg
c3Bva2VuIGZvcm1hbGx5Cm9uIEw0Uy4KClRob3VnaCBSRkM4MzExIERPRVMgcmVsYXggdGhlIHJl
c3RyaWN0aW9ucywgQm9iIGV0YyBhbCwgbWFrZSBpdApzb3VuZCBhcyBpZiBMNFMgaXMgYSBkb25l
IGRlYWwuCgpSZWdhcmRzLApSb2QKCj4gPiBPbiAxNSBPY3QsIDIwMjEsIGF0IDE6MTcgYW0sIERh
dmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiAKPiA+PiBZb3UgY2FuIGFs
c28gc3Vic2NyaWJlIHRvIExpbnV4IGxpc3RzIGJ5IGltcG9ydGluZyB0aGUgbWFpbHMgZnJvbSBM
b3JlLAo+ID4+IGFzIG9uZSBvZiB0aGUgcmVwbGllcyBpbiB0aGUgdGhyZWFkIGFib3ZlIHBvaW50
ZWQgb3V0LiBCZWVuIG1lYW5pbmcgdG8KPiA+PiBzd2l0Y2ggdG8gdGhhdCBteXNlbGYsIGJ1dCBo
YXZlbid0IGdvdHRlbiBhcm91bmQgdG8gaXQgeWV0Li4uCj4gPiAKPiA+IEkgYXR0ZW1wdGVkIHRv
IHN1YnNjcmliZSBhZ2Fpbiwgbm90aGluZyBoYXBwZW5lZC4KPiA+IAo+ID4gZmlndXJpbmcgb3V0
IGxvcmUuLi4gaXMgdG9vIG11Y2ggd29yayBmb3IgdG9kYXkuIEknZCByYXRoZXIgaGFtbWVyCj4g
PiBzbWFsbCB0aGluZ3MgaW50byBvYmxpdmlvbiBvbiBteSBib2F0Lgo+ID4gCj4gPiBwbGVhc2Ug
ZmVlbCBmcmVlIHRvIHBhc3MgYWxvbmcgbXkgY29tbWVudHMgYW5kIHRoZSBzY2UgdGVhbXMgZmlu
ZGluZ3MKPiA+IGludG8gdGhhdCB0aHJlYWQuCj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzMwOEM4OEM2LUQ0NjUtNEQ1MC04MDM4LTQxNjExOUEzNTM1Q0BnbWFpbC5jb20vCj4gCj4g
SSBoYXZlbid0IHlldCBwb3N0ZWQgYSBsaW5rIHRvIHRoZSBXR0xDIE9iamVjdGlvbnMgZG9jdW1l
bnQuICBJIHdpbGwgaWYgaXQgc2VlbSBzIG5lY2Vzc2FyeSB0byBkbyBzby4KPiAKPiAgLSBKb25h
dGhhbiBNb3J0b24KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEVjbi1zYW5lIG1haWxpbmcgbGlzdAo+IEVjbi1zYW5lQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Vjbi1zYW5lCj4g
Cj4gCgotLSAKUm9kIEdyaW1lcyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByZ3JpbWVzQGZyZWVic2Qub3JnCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
