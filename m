Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D589452884
	for <lists+cake@lfdr.de>; Tue, 16 Nov 2021 04:25:32 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 46BB63CB46;
	Mon, 15 Nov 2021 22:25:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637033130;
	bh=btlwReSL2RMEsstEI35uTI0EaBtdoMF0vc1IjjGhpuY=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Pt8ej/+QL/o2OMBJFMvUGkXpYpnM69LIaW+KJo+a2b2UaX+CapyMJEuv8rYxSv/gA
	 BkD/ELbZohkVEbvKFEizawFOcAu1ArlCS1KVZyVH61K0/soNLNOIF50wYaLpwknY6V
	 UyQSOwXjOgWEkVa2eX9QgAFGLBeZZ4VkSbI7Cd8DwiHIAuxk0wEr0MtnNOENc7UUx2
	 JFQv6RnoToLcrEbnm4eTxTDX8fHJtGNAXyuUPaLMHAat0dGeJpTMFnGEHWaxQsG8R3
	 4i8iXOCgejtEYHgrNXXsOaV/lSdzM7H6F9hOgTIGttwajvbDzsrxnPaiqZ2Dhn/By/
	 uzLj1MlAYAPNg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5059F3B2A4;
 Mon, 15 Nov 2021 22:25:29 -0500 (EST)
Received: by mail-io1-xd36.google.com with SMTP id v23so24148481iom.12;
 Mon, 15 Nov 2021 19:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=toDUnyPc6TT2xHbg1pecVCAfcieqY2fq5RVWKX58kpI=;
 b=UmaKz9jt79DLuaEwvIRumUu1i2svKzaE69d75TYwyvQZPOTLY7eZS1H9OoU9yNvwiI
 nOuooh7TguPuAqF0Z/bR+OOA/KG7lPYPo/BHpUnX0IeV7qeHi6Q2oZqU9yyiDCE1CqcT
 TFDoxYIjfLnOWX0Uj77K6APk7WQit1vCw9PlC293dzYzaQECMekMvICqCx6fXQ+v95Jk
 CsizVPB9fsG3sxzy6iaOYoYj18UZBD4npmDM3Tu4HOUKY7vW3wN5Kc05VNpKcG1fo2++
 +zC5EMuLVYbHBZSs2ke21KgS1nF87hplRYAjj8lovRm4TpvKSYt/dEj+6a3wYjjm5MOi
 wwGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=toDUnyPc6TT2xHbg1pecVCAfcieqY2fq5RVWKX58kpI=;
 b=QajbS2VGuHjR6kj1CocGZaGpzeFzH+gjDvocyBHo+JCzJS1M7E2u9+TfLLdANO/GXU
 xw8XlZvjGJPr7px+lY3hWA0Hy5vl21URv+lwzSuoxTQUrxdf8x6qO1CYUGCZSBNGHi+m
 GQbDg1BH505GbwP/NWbczE4HE+a8ihhNhP5KXQYU578zAtVNb4iWcscDqKmWWzQRl1yQ
 2oDQ0spc77eLSO8YE+T56fCtsaymN/yPHohdNmIXgccjukAE0aCpPBQRkRdOhnGPy00v
 XMjEJCQvoCyLVjJxvNmDLaxI811rqNQvLUFubJ/GY9h2XOgAYT8KeVNhwzF94SlzgBm+
 92mg==
X-Gm-Message-State: AOAM533RCTpWQXrzmXn/jt2pRVC5EplRKNjPiKKwKnsjU+5HItJTw+K3
 vPDUpzXTwVEYtNbjaBGniC26WnYFDCLmJDQNTJvNEe/OFAA=
X-Google-Smtp-Source: ABdhPJzCWjVv5R70anuf9rT54gNWmDrfht3iHiE8s7ZiITHNKIe8R21f7eA9ktW5sUNssVLRJRvCMBAMlvRrlTQGduk=
X-Received: by 2002:a5d:9d9b:: with SMTP id ay27mr2587552iob.133.1637033128342; 
 Mon, 15 Nov 2021 19:25:28 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 15 Nov 2021 19:25:15 -0800
Message-ID: <CAA93jw5nF_h8y_KAEq00U1V+14ywr9koBHHCsgj0AnatNxJOXA@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] git becomes sentient
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

VGhlcmUgd2FzIGEgdGltZSB3aGVuIEkgd2FzIHByZXR0eSBoZWFkcyBkb3duIGluIGtlcm5lbCBo
ZWFkc3BhY2UsIGFuZAphcyBJIGhhZCB2ZXJ5IGxpbWl0ZWQgYmFuZHdpZHRoLCBzZXR1cCBjcm9u
IHRvIGZldGNoIHRoZSBsYXRlc3QKbmV0LW5leHQgdHJlZSBhdCBkYXduLCBhdCBub29uLCBhbmQg
YXQgdGhlIGVuZCBvZiB0aGUgd29ya2RheSwgc28gSSdkCm5vdCBnZXQgdG9vIG91dCBvZiBzeW5j
LCBhbmQgbm90IGZvcmdldCB0byBzdGF5IGluIHN5bmMuCgpOb3cgaXQncyBnYWluZWQgYW4gaW50
ZXJmYWNlIHRvIGNyb24gYW5kIHN5c3RlbWQgdG8gZmlyZSBvZmYgZmV0Y2hlcwppbiB0aGUgYmFj
a2dyb3VuZC4KCmh0dHBzOi8vZ2l0LXNjbS5jb20vZG9jcy9naXQtbWFpbnRlbmFuY2UKCi0tIApJ
IHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5
Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2
ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
