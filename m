Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AFD3ED379
	for <lists+cake@lfdr.de>; Mon, 16 Aug 2021 13:59:42 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A00393CB39;
	Mon, 16 Aug 2021 07:59:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1629115180;
	bh=8K/fYQ1OK6539jh1w+MXVoCDGGkUDSj5EB/HJijDhSc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FWNuPrti6X1TQ2dcawCzzElJm65okYh4DB6ICDjgjWS06Ka9gOLRqXEIjrNx2VbII
	 fpPjPHNqQl7gN9+y6IBsWm+H8vkK0/fcpq1v8TxtLXnNc3Lha5rbuNHEFvebPAaunF
	 H9EPCO3sI6BeW1o7QWLMvahoZgyUz+xh4WXNsmrXZ9X8ULmjGUkco4el9f+vs0fO12
	 7xattmgqRfEGZX1nOjbtgftd5rUHDY7mvivF9PObWGTHa8rrDaRWelfyJWEpkWzI0M
	 zPuaXuggJh338pWDCNVhBojW7uAhElKKnl8LIOMTzxNvfpkuEOsPopSpmoznh5+T42
	 uACvzvGHGq6+Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C15683B29D
 for <cake@lists.bufferbloat.net>; Mon, 16 Aug 2021 07:59:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629115178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=JnuIBapx/DIqUD04cPgw31GDRqK+09qdpfB7ZewdXOc=;
 b=VSJAcvEmCYoEo8JIzg80wxhJYWMA3tqFCJ5kAbT+G7x+d9CNHNgPBwLCfzKMptLmwIfxWG
 yo6m53I4j6NJpr6VEh2cTU5n8tJUo04jJetV7aVODWgHXt3T9nZLBk4os3x6naOxOhNtZ9
 A4omtPGokq3INkqZWSPRdhLO6HN92Cg=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-55-3LmBgvAxNKuf-rpYIxVnAA-1; Mon, 16 Aug 2021 07:59:37 -0400
X-MC-Unique: 3LmBgvAxNKuf-rpYIxVnAA-1
Received: by mail-ed1-f69.google.com with SMTP id
 ec47-20020a0564020d6fb02903be5e0a8cd2so8742191edb.0
 for <cake@lists.bufferbloat.net>; Mon, 16 Aug 2021 04:59:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JnuIBapx/DIqUD04cPgw31GDRqK+09qdpfB7ZewdXOc=;
 b=D74kJ89kdhZvCE8+hi4KiZfuPqHg6/GyK9jm05+h7PeX0kHqwAqU0olYSqorJi+RKw
 Qrsj1ZnIJpcrvlEtUbh5lOxoB0y35zXPvoq5wwTdKnUu//5o0bhFZgC0PJNmN+9l3bgU
 sd2nLc0WBU8q2b/zTlI03M6StYz/3Dit6xixadXytTtVULBfMjeFkLYRR00/F6s3i3qf
 J4jfWNMUrfvr3W9+p8D0sHqW0elKA+uqaHB6d/kL58ZNymHnsNJ9kPZ/WnMdfZozLGnu
 WhTv/idQQU7al5hj+zE3Q2UIoAgGAwE7zi2uATQ8um6aNR5Ubauuyll6Wix/Wp+Jnxq8
 c1qQ==
X-Gm-Message-State: AOAM532sUQ/kPid54bHEVouZ0i+hTVnkgGpnNnJmjjylsKIJSayL2zM2
 J5f7icBwhanz4jiyYT19qn5f3RHKPpqyRtrqzE6A9sDDFwvlr8pIy7vmu0cvO5uVfHpHlS0tUcb
 SAP3z+y1llQVG8eTb1fjYyw==
X-Received: by 2002:a17:906:f8d5:: with SMTP id
 lh21mr15409868ejb.6.1629115175643; 
 Mon, 16 Aug 2021 04:59:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw3hyTtQS+QPnGyvy7sgct91YG8I8LsQGaYkTACmr0cG34RW2EcT8JUcuLHqeiSdRvz+t1/MA==
X-Received: by 2002:a17:906:f8d5:: with SMTP id
 lh21mr15409848ejb.6.1629115175326; 
 Mon, 16 Aug 2021 04:59:35 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id c28sm3595681ejc.102.2021.08.16.04.59.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 04:59:34 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 59D04180185; Mon, 16 Aug 2021 13:59:34 +0200 (CEST)
From: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 16 Aug 2021 13:59:17 +0200
Message-Id: <20210816115917.16800-1-toke@redhat.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net] sch_cake: fix srchost/dsthost hashing mode
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
Cc: cake@lists.bufferbloat.net,
 =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

V2hlbiBhZGRpbmcgc3VwcG9ydCBmb3IgdXNpbmcgdGhlIHNrYi0+aGFzaCB2YWx1ZSBhcyB0aGUg
ZmxvdyBoYXNoIGluIENBS0UsCkkgYWNjaWRlbnRhbGx5IGludHJvZHVjZWQgYSBsb2dpYyBlcnJv
ciB0aGF0IGJyb2tlIHRoZSBob3N0LW9ubHkgaXNvbGF0aW9uCm1vZGVzIG9mIENBS0UgKHNyY2hv
c3QgYW5kIGRzdGhvc3Qga2V5d29yZHMpLiBTcGVjaWZpY2FsbHksIHRoZSBmbG93X2hhc2gKdmFy
aWFibGUgc2hvdWxkIHN0YXkgaW5pdGlhbGlzZWQgdG8gMCBpbiBjYWtlX2hhc2goKSBpbiBwdXJl
IGhvc3QtYmFzZWQKaGFzaGluZyBtb2RlLiBBZGQgYSBjaGVjayBmb3IgdGhpcyBiZWZvcmUgdXNp
bmcgdGhlIHNrYi0+aGFzaCB2YWx1ZSBhcwpmbG93X2hhc2guCgpGaXhlczogYjBjMTllZDYwODhh
ICgic2NoX2Nha2U6IFRha2UgYWR2YW50YWdlIG9mIHNrYi0+aGFzaCB3aGVyZSBhcHByb3ByaWF0
ZSIpClJlcG9ydGVkLWJ5OiBQZXRlIEhlaXN0IDxwZXRlQGhlaXN0cC5uZXQ+ClRlc3RlZC1ieTog
UGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAubmV0PgpTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5k
LUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KLS0tCiBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKaW5k
ZXggOTUxNTQyODQzY2FiLi4yOGFmOGIxZTFiYjEgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9zY2hf
Y2FrZS5jCisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCkBAIC03MjAsNyArNzIwLDcgQEAgc3Rh
dGljIHUzMiBjYWtlX2hhc2goc3RydWN0IGNha2VfdGluX2RhdGEgKnEsIGNvbnN0IHN0cnVjdCBz
a19idWZmICpza2IsCiBza2lwX2hhc2g6CiAJaWYgKGZsb3dfb3ZlcnJpZGUpCiAJCWZsb3dfaGFz
aCA9IGZsb3dfb3ZlcnJpZGUgLSAxOwotCWVsc2UgaWYgKHVzZV9za2JoYXNoKQorCWVsc2UgaWYg
KHVzZV9za2JoYXNoICYmIChmbG93X21vZGUgJiBDQUtFX0ZMT1dfRkxPV1MpKQogCQlmbG93X2hh
c2ggPSBza2ItPmhhc2g7CiAJaWYgKGhvc3Rfb3ZlcnJpZGUpIHsKIAkJZHN0aG9zdF9oYXNoID0g
aG9zdF9vdmVycmlkZSAtIDE7Ci0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
