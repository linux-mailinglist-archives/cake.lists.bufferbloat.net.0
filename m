Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE02209DE3
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 13:55:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2C5203CB44;
	Thu, 25 Jun 2020 07:55:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593086113;
	bh=wVveu+gNyET7TOFywQYYWsALjXUCyW1AnqxD6LDMQKw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WzIs24PS5yXC2f+cDUqQpcBrf+xOdAvWSXgUc8FJmb5czmfSapH1Bmb8zafXX79ya
	 f1B+8wijRdRZuIPDPk6ry+cFmw3vrizuXnyv421PfpLkqzMK+9ctpQxDyzep0QUOnb
	 L/RTxg73x1E5aa5rcLUHj2fIhXGmtaFohwvPECW0DwL8gVnEnv0ziDTL50WJUJzibw
	 ox4K7JaS0Qa7Ni+b/VsyPSMv3706zmMXZXAfeHvwBhXXv6G+IJvSkDsYWoJSWgeXjp
	 kQsajeUCFKqCNhjFcFQ4LJnd/HYnUfqthmk7AM0MD5qHOVeNnyWp2ki1o3WU4nm3gb
	 o0ZFDhU7OARtA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7B68C3B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 07:55:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593086111;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ld4Tn0L3Y5q550WDsn2Rq+n4f7sbKAnDUn1LS0FKjWo=;
 b=fUb7c6foeFjkrs98flJzYuaWcwKDP/7j4hE2n6j/SaXVYnWPcLDYr9YNgfVLM08FO/4ZO/
 v6PQctW7uMxecP+wX3X0ZblkXNXa/Ks2s93yAwz/r+YEPjv4MgOn6RYH/fRQ38SnvSzAon
 KD28lFkyl17zc+N+7PsX3ztG3fEDJe8=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-361-geBDa5y2MMWSIBHgw97FCQ-1; Thu, 25 Jun 2020 07:55:09 -0400
X-MC-Unique: geBDa5y2MMWSIBHgw97FCQ-1
Received: by mail-wr1-f72.google.com with SMTP id j16so1273784wrw.3
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 04:55:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Ld4Tn0L3Y5q550WDsn2Rq+n4f7sbKAnDUn1LS0FKjWo=;
 b=HMt1iN96bBb7k6ud8OKSYpVMNNmAtciSu8gG/Fx2BhsaDwQk37+gWBCTDsjARnI3qP
 ljaSsdZDXf2zfHjxOInrbBaPjHLAUhAN7bnrLDnGnh+OEIqr9FDUCixs82Y1OOy0kLsV
 DlJXDueRT6aBVmZKp8kamvcr/kmG/GMteoeqXo8uZXl2Abj8gNO/sWjGNCXHENigHDJP
 DGkii+k0BdUXf9u13bXVeTwUMVIZY2sCtqW3/uG3NnWUS2T0hHQ22BuhmIu3RLkzM+Oe
 +nx4OzbTde3CmHY+aatP1oiWUoLHbhtybpNNqDXLw4W+fZ3JGM1Oe0zikhaxS1gH9rLC
 JztQ==
X-Gm-Message-State: AOAM532G8OVWNQrVCdvGQBgYbkh19H6asZn1iopUwAxbdzdfwIfmClce
 D7iP2V35AnlbskoAT2VNM36PqNjWaAWn8kTcA3VhlZqL5M1FdCHRDftq2rO16RJy2E3fgpG9j5i
 M68xXbqwAuUv0+cWKE2vabw==
X-Received: by 2002:a1c:dd86:: with SMTP id u128mr2946091wmg.123.1593086108601; 
 Thu, 25 Jun 2020 04:55:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyOOk93C4793Qkapy2JpGSur7LO8UZd2j77wFa1YhFtXy6B7IQG+K6TsroaWQhOPlXEUAeAwA==
X-Received: by 2002:a1c:dd86:: with SMTP id u128mr2946062wmg.123.1593086108132; 
 Thu, 25 Jun 2020 04:55:08 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id a22sm12361179wmj.9.2020.06.25.04.55.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 04:55:06 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 2B1EF1814FE; Thu, 25 Jun 2020 13:55:06 +0200 (CEST)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 13:55:06 +0200
Message-ID: <159308610609.190211.12172433725292686379.stgit@toke.dk>
In-Reply-To: <159308610282.190211.9431406149182757758.stgit@toke.dk>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net-next 3/5] sch_cake: don't call diffserv parsing
 code when it is not needed
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpBcyBhIGZ1
cnRoZXIgb3B0aW1pc2F0aW9uIG9mIHRoZSBkaWZmc2VydiBwYXJzaW5nIGNvZGVwYXRoLCB3ZSBj
YW4gc2tpcCBpdAplbnRpcmVseSBpZiBDQUtFIGlzIG5laXRoZXIgY29uZmlndXJlZCB0byB1c2Ug
ZGlmZnNlcnYtYmFzZWQKY2xhc3NpZmljYXRpb24sIG5vciB0byB6ZXJvIG91dCB0aGUgZGlmZnNl
cnYgYml0cy4KCkZpeGVzOiBjODdiNGVjZGJlOGQgKCJzY2hfY2FrZTogTWFrZSBzdXJlIHdlIGNh
biB3cml0ZSB0aGUgSVAgaGVhZGVyIGJlZm9yZSBjaGFuZ2luZyBEU0NQIGJpdHMiKQpTaWduZWQt
b2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KLS0tCiBu
ZXQvc2NoZWQvc2NoX2Nha2UuYyB8ICAgMTMgKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQv
c2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCmluZGV4IGNlYmNjMzY3NTVhYy4uOTU4
NTIzYzc3N2JlIDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQvc2No
ZWQvc2NoX2Nha2UuYwpAQCAtMTU5Nyw3ICsxNTk3LDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBj
YWtlX2Ryb3Aoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBza19idWZmICoqdG9fZnJlZSkKIAly
ZXR1cm4gaWR4ICsgKHRpbiA8PCAxNik7CiB9CiAKLXN0YXRpYyB1OCBjYWtlX2hhbmRsZV9kaWZm
c2VydihzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCB1MTYgd2FzaCkKK3N0YXRpYyB1OCBjYWtlX2hhbmRs
ZV9kaWZmc2VydihzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBib29sIHdhc2gpCiB7CiAJY29uc3QgaW50
IG9mZnNldCA9IHNrYl9uZXR3b3JrX29mZnNldChza2IpOwogCXUxNiAqYnVmLCBidWZfOwpAQCAt
MTY1OCwxNCArMTY1OCwxNyBAQCBzdGF0aWMgc3RydWN0IGNha2VfdGluX2RhdGEgKmNha2Vfc2Vs
ZWN0X3RpbihzdHJ1Y3QgUWRpc2MgKnNjaCwKIHsKIAlzdHJ1Y3QgY2FrZV9zY2hlZF9kYXRhICpx
ID0gcWRpc2NfcHJpdihzY2gpOwogCXUzMiB0aW4sIG1hcms7CisJYm9vbCB3YXNoOwogCXU4IGRz
Y3A7CiAKIAkvKiBUaW4gc2VsZWN0aW9uOiBEZWZhdWx0IHRvIGRpZmZzZXJ2LWJhc2VkIHNlbGVj
dGlvbiwgYWxsb3cgb3ZlcnJpZGluZwotCSAqIHVzaW5nIGZpcmV3YWxsIG1hcmtzIG9yIHNrYi0+
cHJpb3JpdHkuCisJICogdXNpbmcgZmlyZXdhbGwgbWFya3Mgb3Igc2tiLT5wcmlvcml0eS4gQ2Fs
bCBEU0NQIHBhcnNpbmcgZWFybHkgaWYKKwkgKiB3YXNoIGlzIGVuYWJsZWQsIG90aGVyd2lzZSBk
ZWZlciB0byBiZWxvdyB0byBza2lwIHVubmVlZGVkIHBhcnNpbmcuCiAJICovCi0JZHNjcCA9IGNh
a2VfaGFuZGxlX2RpZmZzZXJ2KHNrYiwKLQkJCQkgICAgcS0+cmF0ZV9mbGFncyAmIENBS0VfRkxB
R19XQVNIKTsKIAltYXJrID0gKHNrYi0+bWFyayAmIHEtPmZ3bWFya19tYXNrKSA+PiBxLT5md21h
cmtfc2hmdDsKKwl3YXNoID0gISEocS0+cmF0ZV9mbGFncyAmIENBS0VfRkxBR19XQVNIKTsKKwlp
ZiAod2FzaCkKKwkJZHNjcCA9IGNha2VfaGFuZGxlX2RpZmZzZXJ2KHNrYiwgd2FzaCk7CiAKIAlp
ZiAocS0+dGluX21vZGUgPT0gQ0FLRV9ESUZGU0VSVl9CRVNURUZGT1JUKQogCQl0aW4gPSAwOwpA
QCAtMTY3OSw2ICsxNjgyLDggQEAgc3RhdGljIHN0cnVjdCBjYWtlX3Rpbl9kYXRhICpjYWtlX3Nl
bGVjdF90aW4oc3RydWN0IFFkaXNjICpzY2gsCiAJCXRpbiA9IHEtPnRpbl9vcmRlcltUQ19IX01J
Tihza2ItPnByaW9yaXR5KSAtIDFdOwogCiAJZWxzZSB7CisJCWlmICghd2FzaCkKKwkJCWRzY3Ag
PSBjYWtlX2hhbmRsZV9kaWZmc2Vydihza2IsIHdhc2gpOwogCQl0aW4gPSBxLT50aW5faW5kZXhb
ZHNjcF07CiAKIAkJaWYgKHVubGlrZWx5KHRpbiA+PSBxLT50aW5fY250KSkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK
