Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE13954599D
	for <lists+cake@lfdr.de>; Fri, 10 Jun 2022 03:37:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 267333CB5A;
	Thu,  9 Jun 2022 21:37:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1654825039;
	bh=oQ7FQhBdY965g0osrLqiZ1/1eRN6YOZWkp/+I9UOD/Q=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=A/tjK9X3KVGnb7pONfAaoNNQZc9DbYjwfkF7GPtBKAao0wgbNnvUpTQb+lZBeI9f+
	 vq4alolxrOdYy7CW011Cy7mYsOXRsEn2zPQRODW4PsVIjKbx+ZN03lUQLhqnt7+oNr
	 mUS6r/kds2pB27YF0MGLqphe8x43Y9kejOCKlC+kfXdBetE6rI54kP/Z0IPUs/QNSp
	 J9ySjurBIq+mroEGaruqDFTIUKtdV7MO04KyGhxATrO1bgjuRhIIR7b688547vxowb
	 /03McG6I5LIyt7BBphxWcMsCNomLrlWfk7J9vwnMNzTgQ+W14GUzOHs6jigPHtHr1U
	 Lciv6d1NJNdRA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0CEEB3CB35;
 Thu,  9 Jun 2022 21:37:17 -0400 (EDT)
Received: by mail-ed1-x52f.google.com with SMTP id x5so28275508edi.2;
 Thu, 09 Jun 2022 18:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=sNF7NTnaFhcnoF713y+atL9s5ZuMdZAsVCAvPtLnQTY=;
 b=GcnK9XAHgw4xTw1bOJI45XbtRT6biIhOUNLgy3qYMCLqSPAFu9M5ol8VwX/8kol40u
 ucJvEvZW4O+yMROcRHRPhHgEBM6JfpeEtTxaHG0cYfVXqMsU4/UtOkfhNwkgRJ5hhZXW
 modpYY/VbYC/W4Q9+a4it/DQq8G+wFySZUgaGmr4sLmNsCBMhdpjbYETceh5iMVC1C0o
 fqdGPS9Hx2G7LvbgYRQ9ZnUyyFEoJpQfQj+WsnO944iMwt7ev3CdNkkvakbPLoGjRZIa
 gyE4zBM+hPLD1G6muuiBB0a3EF2gVjsUarlEKlHeGppjJMijZIBJe8/dl3Mdc0NCDaKS
 h8uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=sNF7NTnaFhcnoF713y+atL9s5ZuMdZAsVCAvPtLnQTY=;
 b=Yx+Xh6Xz1UXzYzyHxUUKM5DNpc8kiOOocG/WmyRIWeFUG/F3qMKkhIoNes9inU5Bpk
 q7hHxMcMWQc8worYVe3ZMJIPwvOgwldyTyPxixd3z7PJT+2/CmsJYD2sFfeP0HrMLBsZ
 pkehFF2tBHu2ll6qnURoFPoiJlXC3r9iG4yD8PKA0EC3OqaGsSOzH5Uz8xQbg8kAmQQu
 dzqUSPFZXW9QSgtup0tLA4newP8o0dT9agAaQ02HfJcGJijQ/rz6MwT9udRRdE5/R8lW
 jXaIQ1wLFCj3KRKloZ0UU5fj3omrAVZqOWlWQcpA4E3fGzM8Dvy4KBw221ENZSkQKLNM
 OSuQ==
X-Gm-Message-State: AOAM533SzGNc2Vw8dHmqezLNgJ5QyThYXKXBtsdxQhX22xIrBpz7nBAq
 +dXLYmQ4q/3U9PFPF0nBpPBI88sx8sJU+BBQUWC/xz+FGmU=
X-Google-Smtp-Source: ABdhPJzEnOKNC6/W7D5FRbbID/qHLihjhneBwXN+XEXC1/NWQPFk1pyk79P0gJBQNWqN8QKbPKSWUa1OnoY5YIP+jWM=
X-Received: by 2002:a50:d7c6:0:b0:42d:5065:568d with SMTP id
 m6-20020a50d7c6000000b0042d5065568dmr48030819edj.116.1654825036798; Thu, 09
 Jun 2022 18:37:16 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 9 Jun 2022 18:37:04 -0700
Message-ID: <CAA93jw4S5KZC=RF_S4aCPWterZqTMt9E4Zu61RtnaDiPR2B2nA@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, starlink@lists.bufferbloat.net, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] DMARC policy change fix for lists.bufferbloat.net
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T3ZlciB0aGUgcGFzdCB5ZWFyIG9yIHRocmVlIHRoZSBETUFSQyBwb2xpY3kgY2hhbmdlIHRvIGhv
dyBtYWlsaW5nCmxpc3RzIHdlcmUgaGFuZGxlZCBoYXZlIGJlZW4gcHJvcGFnYXRpbmcgYWNyb3Nz
IHRoZSBuZXQuIEkgd2Fzbid0CnBheWluZyBhdHRlbnRpb24uIEEgbG90IG9mIHBlb3BsZSBoYXZl
IGJlZW4gYXV0by11bnN1YnNjcmliZWQgb3ZlciB0aGUKbGFzdCBmZXcgbW9udGhzLiBJJ20gc3Rp
bGwgd29ya2luZyBvbiBpbXByb3ZpbmcgdGhlIERNQVJDIHBvbGljeQpoZXJlLi4uIGFuZCB0aGlz
IGlzIGEgdGVzdCBtZXNzYWdlIG9mIG11bmdpbmcgcmVwbGllcyBkaWZmZXJlbnRseS4uLgoKVGhl
IGJsb2F0IG1haWxpbmcgbGlzdCwgd2hpY2ggYXQgaXRzIHBlYWsgd2FzIGFib3ZlIDU1MCBwZW9w
bGUsIGlzIG5vdwpkb3duIHRvIGFyb3VuZCAzNTAsIGFuZCBmb3IgYWxsIEkga25vdyB0aGUgRE1B
UkMgY2xhc3NpZmllcnMgaGF2ZSBiZWVuCnRvc3NpbmcgYWxsIHRoZSBlbWFpbCB0aGF0IHJlbWFp
bnMgaW50byB5b3VyIHNwYW0gZm9sZGVycy4gSWYgeW91J3ZlCmJlZW4gbWlzc2luZyBhbGwgdGhl
IGV4Y2l0aW5nLCBpbm5vdmF0aXZlIGRlYmxvYXRpbmcgYWN0aXZpdHkgYWNyb3NzCnNvIG1hbnkg
YXNwZWN0cyBvZiBvdXIgcHJvamVjdCAtIHRoZSBpYWIgd29ya3Nob3AgbGFzdCBzZXB0IGZvcgpl
eGFtcGxlLCB0aGUgbmV3IHNwZWVkdGVzdC5uZXQgYXBwLCB0aGUgaW1wcm92ZW1lbnRzIHRvIHdp
ZmksIG5ld3Mgb24KdGhlIGxhdGVzdCBicm9hZGJhbmQgYWN0aXZpdGllcywgZXRjLCBldGMsIG91
ciBtYWlsaW5nIGxpc3QgYXJjaGl2ZXMsCndvdWxkIGJlIGEgZ29vZCBwbGFjZSB0byBsb29rIHRv
IHNlZSB3aGVuIHRoZXNlIHByb2JsZW1zIHJlYWxseQpzdGFydGVkLgoKSUYgeW91IGhhdmUgYmVl
biBtaXNzaW5nIGVtYWlscyBmcm9tIHRoaXMgZG9tYWluLCBwbGVhc2UgY29udGFjdCBtZQpwcml2
YXRlbHkgc28gSSBjYW4gbG9vayBvdmVyIHRoZSBsb2dzLiBUaGVyZSdzIGF0IGxlYXN0IDMgZGlm
ZmVyZW50CmJlaGF2aW9ycyBoYXBwZW5pbmcgLSByZWplY3Rpb25zLCB3aGljaCBpcyB3aGF0IEkg
bm90aWNlZCwgYnV0IDI1MApxdWFyYW50aW5lIEkgaGFkIG5vdCwgdW50aWwgdG9kYXksIGFuZCBz
b21ldGhpbmcgdGhhdCBJIGNhbm5vdApkZXNjcmliZSwgb25seSBjdXJzZSBhdCwgYXMgeWV0LgoK
LS0gCkZRIFdvcmxkIERvbWluYXRpb24gcGVuZGluZzogaHR0cHM6Ly9ibG9nLmNlcm93cnQub3Jn
L3Bvc3Qvc3RhdGVfb2ZfZnFfY29kZWwvCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK
