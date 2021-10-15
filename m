Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8576B4318D1
	for <lists+cake@lfdr.de>; Mon, 18 Oct 2021 14:18:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D93283CB38;
	Mon, 18 Oct 2021 08:18:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634559513;
	bh=hwmoZeSNs3+/38XZ8k1r40koAj2fV6eiyn8O0P1425M=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GN3/yY8bj7Z8/dnDBVK2MjlHHyPQTe6LcI4+dFmqyX3DwKf+bqcME1H1ugPx2y2Ux
	 se+ujMKU6gwsjWhRFweAoQnPCeVFXFod4p1Oj7N8S3SDGnoGTCuLMhlWW5543iV/Bp
	 iVUMjV+Xz81KUdBLywlimsPhSNg8FTBuFbSVgtXfFjpGaRp/TCK4J7QHXbzZ0RBBuL
	 9KIQv1D0MCC4TK2oy9iShnKjRb86k3MjqW6AsTEab0GVCzpETNPx7XjTDmh+wVMth0
	 PHw4Tvsj9WGjQgwsK+gNr/BLZzBxPZOC+Adgc8vXQrdRxXSuQRxIXGJXiIbXEZEq1L
	 KlgDUI7csbIRQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp84.iad3a.emailsrvr.com (smtp84.iad3a.emailsrvr.com
 [173.203.187.84])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DA9C93B2A4
 for <cake@lists.bufferbloat.net>; Fri, 15 Oct 2021 12:46:18 -0400 (EDT)
X-Auth-ID: jf@jonathanfoulkes.com
Received: by smtp27.relay.iad3a.emailsrvr.com (Authenticated sender:
 jf-AT-jonathanfoulkes.com) with ESMTPSA id 73A7924906
 for <cake@lists.bufferbloat.net>; Fri, 15 Oct 2021 12:46:18 -0400 (EDT)
From: Jonathan Foulkes <jf@jonathanfoulkes.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Message-Id: <47985A3A-FD43-4AA2-A757-9A0214B3DA44@jonathanfoulkes.com>
Date: Fri, 15 Oct 2021 12:46:17 -0400
To: cake@lists.bufferbloat.net
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Classification-ID: 8722f34f-81da-4b85-a675-3df0731b1895-1-1
X-Mailman-Approved-At: Mon, 18 Oct 2021 08:18:32 -0400
Subject: [Cake] Cake diffserv3 stalling when all ingress marked with CS1
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

SGkgRXZlcnlvbmUsIAoKSXQgbG9va3MgbGlrZSB0aGUgbGl0dGxlIGlzc3VlIHdpdGggc29tZSBJ
U1BzIHJlLW1hcmtpbmcgYWxsIGluYm91bmQgKHRvIHRoZSBtb2RlbSkgdHJhZmZpYyB3aXRoIENT
MSBpcyBjcm9wcGluZyB1cCByYW5kb21seS4KClRoaXMgaXMgY2F1c2luZyB3aGF0IHNlZW1zIHRv
IGJlIGEgYnVnIGluIENha2Ugd2l0aCBhIG11bHRpLXRpZXIgY29uZmlnIChkaWZmc2VydjMgaW4g
dGhpcyBjYXNlKS4KCkkgaGF2ZSBzb21lIHVzZXJzIG9uIGxpbmVzIHRoYXQgaGFkIGJlZW4gd29y
a2luZyBmaW5lIGZvciB5ZWFycyB3aXRoIHZhcmlvdXMgaXRlcmF0aW9ucyBvZiBDYWtlLCBidXQg
YWxsIG9mIHRoZSBzdWRkZW4sIGluIHRoZSBwYXN0IHR3byB3ZWVrcywgc3RhcnRlZCBzaG93aW5n
IHN0cmFuZ2UgaXNzdWVzIHdpdGggbGFyZ2UgZGVsYXlzIGV2ZXJ5IGNvdXBsZSBvZiBzZWNvbmRz
IGFuZCBldmVuIGxvY2t1cHMgb24gdHJhZmZpYyBmbG93aW5nIG9uIHRoZSBMQU4gKHRoZSByb3V0
ZXIgVUkgd2FzIG5vdCByZWFjaGFibGUpLgpUdXJucyBvdXQgdGhhdOKAmXMgYWJvdXQgd2hlbiB0
aGUgSVNQIHN0YXJ0ZWQgcmVtYXJraW5nIGV2ZXJ5dGhpbmcgd2l0aCBDUzEuCgpTd2l0Y2hpbmcg
Y2FrZSB0byBiZXN0LWVmZm9ydCBtb2RlIChzaW5nbGUtdGluKSBmaXhlcyB0aGUgaXNzdWUsIGFz
IGRvZXMgZGlzYWJsaW5nIFFvUyBhbHRvZ2V0aGVyLgoKV2UgY2FuIGFsc28gbWFrZSBkaWZzZXJ2
MyB3b3JrIGJ5IGVuYWJsaW5nIHRoZSDigJhzdHJpcCBkc2NwIG9uIGluYm91bmTigJkgKHdhc2gp
IG9wdGlvbi4KCk15IHF1ZXN0aW9uIGlzOiB3aHkgZG9lcyBjYWtlIGxvY2sgdXAgb3IgaGF2ZSBy
ZWd1bGFyIGhpY2N1cHMgaWYgYWxsIGluYm91bmQgdHJhZmZpYyBpcyBDUzE/CgpQbGF0Zm9ybSBp
cyBPcGVuV1JUIDE5LjA3LjYgb24gYSBNVDc2MjEvNzYwMyByb3V0ZXIgd2l0aCA1MTJNQiBvZiBS
QU0uCgpKb25hdGhhbiBGb3Vsa2VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
