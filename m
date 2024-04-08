Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 889698B65A0
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:50 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A59E83D591;
	Mon, 29 Apr 2024 18:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429136;
	bh=utEeZELKusWgDOnCIVxQ5BqafcY9kjTkOgW1i8Tb9EQ=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=FoE6H2bsHlFFoA9Q9ZljPalDUpj1Lo+Nzh1BsrlJSZJKj1096BEdDSvOs/Hs+Br1x
	 /XPL9q+c4MDWXhqyqbOAe0fqf/xLfS8qP5kXe0tMyPeC1RYhW00L0cCBhm7McRo7Lv
	 7xIizYv0HfCt3Vl8l89yl505ZeUWx+RjLSSWUow6vscV6lMmf9EouWvzF4Hx+34zeC
	 Knojj4dJsK4wmVOWmrsiSGY5+dlyHMta6gY0NokTylOsPPNHtIC3dhB2WsL/FUi4wU
	 XDvz6clGOBK6ncDD1HRqQbJfZRyXytpRk7H6uYo9o6CGMli47Xt5dwYsXKS/1xLsz4
	 3bNzKGTuEBTFA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com
 [IPv6:2607:f8b0:4864:20::c36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 27F8D3B2A4
 for <cake@lists.bufferbloat.net>; Mon,  8 Apr 2024 13:47:24 -0400 (EDT)
Received: by mail-oo1-xc36.google.com with SMTP id
 006d021491bc7-5a9c2045b8bso1091412eaf.0
 for <cake@lists.bufferbloat.net>; Mon, 08 Apr 2024 10:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712598443; x=1713203243; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=JwaQrBi/Lb4swFNBzhz/Zq2k8S4Qq8Dh3rIl0JBflxU=;
 b=Bw4NV9L7K6LNqTTqZ/388NJs3x6v+zJZ2QxEeggNWQf4HaNTZ9sRBlIopFNV/+Rf/e
 IyVAJ3KqUXUoOhIzdqOLrj5p4FVZSSbf8BAGnCuxXS4mY4FomXmnhwSq/LtpsPx80l3+
 iMzf1osz02lpuofjj2MHdD1tTXVC1O7cjERXpFEo3ERBPMTiR16/qf39XtRmNPZENmU2
 jiIWjf/f5Jbi69BL7RdBPoBSXjqtgBAhNJyzzwmZ9lOYhbWqHdt91SRxVF49CCug1IQU
 73jz4jkkY4OwrvWn0yxmxqBW+qjMA+xClOa3csGEgRwxXRSRlXuMm12p+bpAewHU6hwg
 NlXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712598443; x=1713203243;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JwaQrBi/Lb4swFNBzhz/Zq2k8S4Qq8Dh3rIl0JBflxU=;
 b=pbSoAsIDAQjgGNv7ofwH78cxbMxNDlmCKly9jAMcG72aMqnv39j/m5ZTG51wgdSzuM
 wk8wU/ZcpylCMbs/qPfJXHdgTGlY7BWPUCbdy8OY62cGnIbgKiWdk94G7Q7F/vGon2S4
 IgbOLyvQAh9oXqrgCsFMYHhNh5i/j2pbMpQnWpSlMS6hzc2T5XzHpDJ6BRvZaLesoz6V
 ng/ASzk+OnLEAxd9Xad31lOoXxVdS52uyB6wAlDHtBSlmtUHZrDglWZ5UH+TulcNWczl
 cXBZ1OTBonpCyDd42xQs6CHpRGxUZZ9jTIHKDWxZ4SJWUkeNUrZTYit4nAkgscKfUmGU
 62cw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXshc7lkwyXRbwc+28hPa4k4IaS1ZAQNue8ww6IzPOFnd+JRQm1kAagcR9Sxqmbh5TVmnxUkvhO8ZzGxaLsLlEr4LGpEDHDQZLoyA==
X-Gm-Message-State: AOJu0YzjVvHPKH0Dtx8sndhAGV+MSQ/y4zPETKaLaEduG4eZI5x5n35X
 3xixU6DK0lLKdYMaOH7s3NojZd+cKi29qGIJ4RbriOhohD4YpEgA
X-Google-Smtp-Source: AGHT+IFnY7oyhUQ2h1YHDDpIJAZW8c1j5v0T5sdQe4YExZyP043/DJ68ik+7HU4G7BhF8KWbj8RTDQ==
X-Received: by 2002:a05:6358:9dae:b0:185:fea7:fecd with SMTP id
 d46-20020a0563589dae00b00185fea7fecdmr5923178rwo.0.1712598443274; 
 Mon, 08 Apr 2024 10:47:23 -0700 (PDT)
Received: from visitorckw-System-Product-Name.. ([140.113.216.168])
 by smtp.gmail.com with ESMTPSA id
 k26-20020a63ff1a000000b005e4666261besm6821143pgi.50.2024.04.08.10.47.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Apr 2024 10:47:22 -0700 (PDT)
To: toke@toke.dk
Date: Tue,  9 Apr 2024 01:47:16 +0800
Message-Id: <20240408174716.751069-1-visitorckw@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: [Cake] [PATCH net-next v2] net: sched: cake: Optimize the number of
	function calls and branches in heap construction
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
From: Kuan-Wei Chiu via Cake <cake@lists.bufferbloat.net>
Reply-To: Kuan-Wei Chiu <visitorckw@gmail.com>
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 jserv@ccns.ncku.edu.tw, cake@lists.bufferbloat.net, edumazet@google.com,
 Kuan-Wei Chiu <visitorckw@gmail.com>, kuba@kernel.org,
 xiyou.wangcong@gmail.com, pabeni@redhat.com, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

V2hlbiBjb25zdHJ1Y3RpbmcgYSBoZWFwLCBoZWFwaWZ5IG9wZXJhdGlvbnMgYXJlIHJlcXVpcmVk
IG9uIGFsbApub24tbGVhZiBub2Rlcy4gVGh1cywgZGV0ZXJtaW5pbmcgdGhlIGluZGV4IG9mIHRo
ZSBmaXJzdCBub24tbGVhZiBub2RlCmlzIGNydWNpYWwuIEluIGEgaGVhcCwgdGhlIGxlZnQgY2hp
bGQncyBpbmRleCBvZiBub2RlIGkgaXMgMiAqIGkgKyAxCmFuZCB0aGUgcmlnaHQgY2hpbGQncyBp
bmRleCBpcyAyICogaSArIDIuIE5vZGUgQ0FLRV9NQVhfVElOUyAqCkNBS0VfUVVFVUVTIC8gMiBo
YXMgaXRzIGxlZnQgYW5kIHJpZ2h0IGNoaWxkcmVuIGF0IGluZGV4ZXMKQ0FLRV9NQVhfVElOUyAq
IENBS0VfUVVFVUVTICsgMSBhbmQgQ0FLRV9NQVhfVElOUyAqIENBS0VfUVVFVUVTICsgMiwKcmVz
cGVjdGl2ZWx5LCB3aGljaCBhcmUgYmV5b25kIHRoZSBoZWFwJ3MgcmFuZ2UsIGluZGljYXRpbmcg
aXQgYXMgYQpsZWFmIG5vZGUuIENvbnZlcnNlbHksIG5vZGUgQ0FLRV9NQVhfVElOUyAqIENBS0Vf
UVVFVUVTIC8gMiAtIDEgaGFzIGEKbGVmdCBjaGlsZCBhdCBpbmRleCBDQUtFX01BWF9USU5TICog
Q0FLRV9RVUVVRVMgLSAxLCBjb25maXJtaW5nIGl0cwpub24tbGVhZiBzdGF0dXMuIFRoZSBsb29w
IHNob3VsZCBzdGFydCBmcm9tIGl0IHNpbmNlIGl0J3Mgbm90IGEgbGVhZgpub2RlLgoKQnkgc3Rh
cnRpbmcgdGhlIGxvb3AgZnJvbSBDQUtFX01BWF9USU5TICogQ0FLRV9RVUVVRVMgLyAyIC0gMSwg
d2UKbWluaW1pemUgZnVuY3Rpb24gY2FsbHMgYW5kIGJyYW5jaCBjb25kaXRpb24gZXZhbHVhdGlv
bnMuIFRoaXMKYWRqdXN0bWVudCB0aGVvcmV0aWNhbGx5IHJlZHVjZXMgdHdvIGZ1bmN0aW9uIGNh
bGxzIChvbmUgZm9yCmNha2VfaGVhcGlmeSgpIGFuZCBhbm90aGVyIGZvciBjYWtlX2hlYXBfZ2V0
X2JhY2tsb2coKSkgYW5kIGZpdmUgYnJhbmNoCmV2YWx1YXRpb25zIChvbmUgZm9yIGl0ZXJhdGlu
ZyBhbGwgbm9uLWxlYWYgbm9kZXMsIG9uZSB3aXRoaW4KY2FrZV9oZWFwaWZ5KCkncyB3aGlsZSBs
b29wLCBhbmQgdGhyZWUgbW9yZSB3aXRoaW4gdGhlIHdoaWxlIGxvb3AKd2l0aCBpZiBjb25kaXRp
b25zKS4KClNpZ25lZC1vZmYtYnk6IEt1YW4tV2VpIENoaXUgPHZpc2l0b3Jja3dAZ21haWwuY29t
PgotLS0KIG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF9jYWtl
LmMgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwppbmRleCBlZGVlOTI2Y2NkZTguLjJlYWJjNGRjNWI3
OSAxMDA2NDQKLS0tIGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMKKysrIGIvbmV0L3NjaGVkL3NjaF9j
YWtlLmMKQEAgLTE1MTIsNyArMTUxMiw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgY2FrZV9kcm9w
KHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tfYnVmZiAqKnRvX2ZyZWUpCiAJaWYgKCFxLT5v
dmVyZmxvd190aW1lb3V0KSB7CiAJCWludCBpOwogCQkvKiBCdWlsZCBmcmVzaCBtYXgtaGVhcCAq
LwotCQlmb3IgKGkgPSBDQUtFX01BWF9USU5TICogQ0FLRV9RVUVVRVMgLyAyOyBpID49IDA7IGkt
LSkKKwkJZm9yIChpID0gQ0FLRV9NQVhfVElOUyAqIENBS0VfUVVFVUVTIC8gMiAtIDE7IGkgPj0g
MDsgaS0tKQogCQkJY2FrZV9oZWFwaWZ5KHEsIGkpOwogCX0KIAlxLT5vdmVyZmxvd190aW1lb3V0
ID0gNjU1MzU7Ci0tIAoyLjM0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
