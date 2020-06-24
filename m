Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA332075DA
	for <lists+cake@lfdr.de>; Wed, 24 Jun 2020 16:40:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 54C773CB38;
	Wed, 24 Jun 2020 10:40:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593009609;
	bh=q9RXcbWavA3fhiMmAneFO5A1ecxkOmnz7nX0tB+tFPE=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HvMNywzDn631qCa1eHO5sG+YOh/D7NoD3r4GasPxaKqC8WjBJQjX46lqpWAtwUJUg
	 kKxoHttw6wz46Pn6YA6PZop9Qj8lwqglf9RW6WcFctmXW4l2U0Xav3yqDoiLV8KSZD
	 sZ394EcfniI06xM/ZB8sC2Y0hqHfYDwYIMsWc147SivVQWFS86GBi5jgcUMIknVUSF
	 17+58T2hTQ6DuPxYvRAZzuXn2pQPy9MUQHFYuyFPQ7l3GdQX64w2FN6HJP3qSodcPA
	 KqEC+XQ0d4DeXcvNO81dXi0k1ser5nlXJpj/b/pv4R7Y5GVwaragyc/c1KXAwWLWe4
	 LNSdMijLqXgXQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DFFEE3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 24 Jun 2020 10:40:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1593009606;
 bh=de0b9vS9f7KhuPqm8guURm9rbo9HQyZLKiUn1bpuuE8=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=INXx/zoITARTJ0XtGyu9Hjt25DxOiNupDpDq2vDNzdcBqs3eIy6in8ojQX/l7GF1M
 vSCHVWQF4lx1x+N1fnDToHHalnC8TpVF/j9Cq1Hj5GLFw0seW1ZReeQ4JibawvDHIO
 3jtgqxmO5s/ONxkFM17vF9TBcM9X0L5+DlpScxMI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.250.102] ([134.76.241.253]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MFsUv-1jdMwT068t-00HP3D; Wed, 24
 Jun 2020 16:40:06 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <8ABBBE20-5045-41CF-967A-CD8961400ABE@darbyshire-bryant.me.uk>
Date: Wed, 24 Jun 2020 16:40:05 +0200
Message-Id: <1A34E9D8-C6FD-4E09-866F-DB30F73D6ABC@gmx.de>
References: <8ABBBE20-5045-41CF-967A-CD8961400ABE@darbyshire-bryant.me.uk>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3445.104.14)
X-Provags-ID: V03:K1:/YzK40rKSiJ5pONXCc2tUoarHGgd0wn9ynvPvYq7Sh7ONY/ub/v
 MHf/IfyQspy5NRnDEzUxe3WKO+5ltsJPYrlmc1JHiFaLCshjNPty6Q+O5ZAtKQ4piNQY8tm
 jYEOSd148nJnECR3+5wmgOk1LRF1DzbBM59jJdii7+31WcHfpHz7wKvxbmVPAde1AWHko0W
 csfNtG7C8oSI+c4X2qAAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9HCuIlfNG5o=:1U7+T1T1mKgX4ZhUlW9Nrm
 VHhu5Ch1fdMrS7KjDRDSqhsO1F3fHYmIZl6ZJtL6Mq9+dgK5HbcMriBIHNWioXosHbWSycvQ7
 kNWI68AFmOLTLEllw7nCmSd0Z9cxrvb1B9CQqn4185BNfUNo+Zrx/Orl/ooxcVLQzgM9cWlGb
 pY448ymk9UMGhPS0zQyf0Hu4p7rUgAVw3GFkEgWlvUjjKu3BJaAqZ/jPHoLS8qh3P1s+cAI4f
 0NQ5qcJyP5S5PHbiJkHTQL3EkBzRMi+7bWi/1p4ipOjQWP5ZBwLRzcxj5uIBERQTpGG8VU1Jk
 hDkFxfNpmBI8M0DM07xSst6hmfXpRZC5+CskHNV4t/lnGEzTXf9WXoi/BiU8dfpJC6z6pK5ES
 qn28BjWZWiG3gU2KTt8PSB/AMc7/PtOa6kvtrLwhADRDCFxWU/kBJbUGy4wNIxs5+sXifhlHS
 80fy8LQ1LxqV7qoBYWm31immQFtpGxwojaNEGfKvYw1Iaympt7F5V6S5PwKrqH9wwE4ecnxcG
 zFtlW29RGuLQNTfyDZVzFeYrcfgH47+p27PWunQ7EL7KtFvu9kdD5P3NKALXppyp85csBDaRu
 s4KefhRV5cKYyFLgIFrvaJOLk1QnVQPQ/zjopuRUUZv/LCxKUlcSUJ/N0GIgM66DU5XnN6MeF
 sXZnxkGbaP+7kkb0ruhPM4xXVk0y1WvFOoNACwtX0tYBsBEez4Iysk+JkPl0IwtXwXFfqQ4DD
 epEYyWuFvqN8syKuDCoROwT8M518UmQL9CTW48pBYZ+iv2JuBrEi/vpOjKzyY9FSVuy8pwpo1
 WyeZUxHzdb4qXP2BDahGLExhkmBnpiFJ5i68UrAZ/q28xEUBbWXR5NBn+9wTzeFHyg13nCQJ7
 kwwn7jllFoEaX56ic78bTleKEum/F1ZOdqJ8UJqlf0KqlKI7MCzSuddDjbw8uKl8VvBMc5PnD
 s0Gx+Mg03i10pxv679dgOjJVRzcA4TtSgsZuF+WKkME1G7C5xU34Cy5sL0k4DMzP2ecP8b0Pj
 hr1oXiSEuq1mCn7PDR73uzvm9ChOVIofeKpXwArAlR7j+YgDvI79MXkeP9DfBpYy/cCMbZd5s
 2dQfUwaRT3ld294T/DaXB8kkKF67f/taydxbpk/ELPzhcIO9ZEL7eujv8XuhuJEhD7n10cXlW
 RXDirgSonyrf/bipbTGbqfCD8oQnJrBLHDdXpSU5FlMN2lMxO2ALcoxDb7H2RzStiqNfA=
Subject: Re: [Cake] Why are target & interval increased on the reduced
 bandwidth tins?
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

SGkgS2V2aW4sCgpzbyB0aGUgd2F5IGNvZGVsIGlzIGRlc2lnbmVkIHRhcmdldCBpcyBiZXN0IHVu
ZGVyc3Rvb2QgYXMgYSBmdW5jdGlvbiBvZiBpbnRlcnZhbCAoYWxsb3dpbmcgNS0xMCUgb2YgaW50
ZXJ2YWwgYXMgc3RhbmRpbmcgcXVldWUgYWxsb3dzIGEgZmluZSB0cmFkZS1vZmYgYmV0d2VlbiBi
YW5kd2lkdGggdXRpbGl6YXRpb24gYW5kIGxhdGVuY3kgdW5kZXIgbG9hZCBpbmNyZWFzZSkuCk5v
dywgaW50ZXJ2YWwgaXMgYmFzaWNhbGx5IGFraW4gdG8gdGhlIHRpbWUgeW91IGFyZSB3aWxsaW5n
IHRvIGdpdmUgYSBmbG93IHRvIHJlYWN0IHRvIHNpZ25hbHMsIGl0IHNob3VsZCBiZSBpbiB0aGUg
c2FtZSBvcmRlciBvZiBtYWduaXR1ZGUgYXMgdGhlIHBhdGggUlRULiBOb3cgcmVkdWNpbmcgdGhl
IGJhbmR3aWR0aCBhbGxvY2F0aW9uIGZvciBhIHRyYWZmaWMgY2xhc3Mgd2lsbCBpbmNyZWFzZSBp
dHMgc2F0dXJhdGlvbiBsb2FkIFJUVCBhbmQgaGVuY2UgaW5jcmVhc2luZyB0aGUgdGFyZ2V0IHNl
ZW1zIGp1c3RpZmllZDsgdGFyZ2V0IGp1c3QgZm9sbG93cyBhbG9uZyBkdWUgdG8gc3RpbGwgd2Fu
dGluZyBhIHJlYXNvbmFibGUgYmFuZHdpZHRoL2xhdGVuY3kgdHJhZGUtb2ZmLgpTbyBpbiBzaG9y
dCB0aGVzZSBzY2FsZSB0aGUgc2hhcGVyIHRvIHdvcmsgd2VsbCB1bmRlciBsb2FkZWQgY29uZGl0
aW9ucy4gQnV0IEpvbmF0aGFuICYgVG9rZSB3aWxsIGJlIGFibGUgdG8gZ2l2ZSB0aGUgcmVhbCBl
eHBsYW5hdGlvbiA7KQoKQmVzdCBSZWdhcmRzCglTZWJhc3RpYW4KCgoKPiBPbiBKdW4gMjQsIDIw
MjAsIGF0IDE2OjMzLCBLZXZpbiBEYXJieXNoaXJlLUJyeWFudCA8a2V2aW5AZGFyYnlzaGlyZS1i
cnlhbnQubWUudWs+IHdyb3RlOgo+IAo+IEdlbnVpbmUgcXVlc3Rpb24uICBGb3IgdGhlIHJlZHVj
ZWQgYmFuZHdpZHRoIHRpbnMgaW4gZGlmZnNlcnYzLzQvOCBhIGRpZmZlcmVudCByYXRlIGFuZCBo
ZW5jZSBkaWZmZXJlbnQgdGFyZ2V0ICYgaW50ZXJ2YWwgdmFsdWVzIGFyZSBhbHNvIGNhbGN1bGF0
ZWQuICBJIGdldCB3aHkgYSB0YXJnZXQvaW50ZXJ2YWwgY2FsY3VsYXRpb24gaXMgZGVzaXJhYmxl
IGZvciB0aGUg4oCYbWFpbuKAmSB0aW4gLSB0aGlzIGZvcm1zIGEg4oCYYmVzdCBjYXNl4oCZIG9m
IGhvdyBsb25nIGVhY2ggYnl0ZSB0YWtlcyB0byB0cmFuc21pdCBhbmQgaXMgZnVuZGFtZW50YWwg
dG8gdGhlIHNoYXBlci4gIFdoYXQgSeKAmW0gbGVzcyBjbGVhciBvbiBpcyB3aHkgaW5jcmVhc2Vk
IHRhcmdldHMgJiBpbnRlcnZhbHMgYXJlIHVzZWQgZm9yIHRoZSByZWR1Y2VkIHRocmVzaG9sZCB0
aW5zLgo+IAo+IFRvIG15IG1pbmQgaXQgbWVhbnMgdGhvc2UgdGlucyBjYW4gYmUgbW9yZSDigJhi
dXJzdHnigJkgYmVmb3JlIGNvZGVsIGp1bXBzIG9uIHRoZW0uICBUaGF04oCZcyBwb3NzaWJseSBv
ayBvbiBhbiBlZ3Jlc3MgcGF0aCBidXQgSeKAmW0gbm90IHNvIGNvbnZpbmNlZCBvbiBhbiBpbmdy
ZXNzIHBhdGguCj4gCj4gUGxlYXNlIHBvaW50IG91dCB0aGUgZXJyb3IgaW4gbXkgdGhpbmtpbmch
Cj4gCj4gCj4gQ2hlZXJzLAo+IAo+IEtldmluIEQtQgo+IAo+IGdwZzogMDEyQyBBQ0IyIDI4QzYg
QzUzRSA5Nzc1ICA5MTIzIEIzQTIgMzg5QiA5REUyIDMzNEEKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IENha2UgbWFpbGluZyBsaXN0Cj4gQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
