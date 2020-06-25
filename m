Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E34AA20A665
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 22:12:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1FDC63CB45;
	Thu, 25 Jun 2020 16:12:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593115937;
	bh=J97N1bJmGWg64oqcjg84/Pit0wc4QF8QHm5/uiXpvDQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GJY0+yNdcFB8Z51udwfOcKAtjn33uwhJVMdwjccmtW7LH4ebVF8ZUl5HOy2uQmeqq
	 NT/0KSYaAB42yqTNiiBkaLM/6zTf8UkKi5OIkuJfFmVhhqCszUfWGoonssnRv783jJ
	 F6Lkfmp+8gce/iZquDbzCkVGlhYYoUT2ky4fpl1h1ZUnVrTyXVjCLKhfej/amQcrnq
	 I3Zs5bBMTklPmDU0TV+SDy1aio/6hhLabBux8Wl6+hueNANA+MdMCTSZZgTp1gJMJe
	 /ctW9O6wq7KZeJdX7UlJvBdmBNt6g0u5sUNtHUUdNgcCFEOa++AsmAF4vbKlDkLpQe
	 Zub/2lwpc3Www==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F18963B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 16:12:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593115935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AceQv1Pht73uByJy0LhtnWLO52xwnez23HLgovVp0cg=;
 b=Qmki3JWlG2RBaCZh2AnMqlNkIG+YxJnb/rZyNCHcT4KoiRgN2xsK2A44m/+m+/GXtNoEFw
 QhFH1ICjHYFb2pMLAOE0WgDABfr9apHaIfEXTWDTsyXk+pWIKWEG5v24CAU0nKZjAHNE1t
 iQRe6GPRrgGgONsGdTzdOfxh9kkE8lk=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-317-GUt1ceS1PvmH9lwRWk68iA-1; Thu, 25 Jun 2020 16:12:12 -0400
X-MC-Unique: GUt1ceS1PvmH9lwRWk68iA-1
Received: by mail-qk1-f199.google.com with SMTP id k1so1688565qko.14
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 13:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=AceQv1Pht73uByJy0LhtnWLO52xwnez23HLgovVp0cg=;
 b=IOfhjqaCB0GTHKXRaMzwLu1YiYqyIL4R9NuSOB3NF0abZuR98Sc2URS+ILOoFZ4dpJ
 wHednhw4rLT8EYqTpygSk5jBq8c4l4qK94CGAHGnu65UbwHh5pKpo6FBe39Ex8hvjFeZ
 ZUfqSB3ZTUQWUTWhF/4nwXHuwhIxlhFPiiUtZVZ6kgkB30ZT73IFI5t1EVehIIIOPuE0
 gtZWqu7PPDXDl01Wg23/0Q2cXh9Nm95Slt9wfG7bXd589XrPa7b8ibHkjp71QzswFhy6
 6pdmeDYxvoXZ6OBgKQyOf4jYN+hJR03R0ryxhk3SUWaQijwCuIWPn7Ihf/Jxk7pPgP1k
 ADTw==
X-Gm-Message-State: AOAM532xPb8zmcJs+hrzxmsaF8+OW97F58YF8O6qMQ7UCTWgk3wHT15P
 sD79bYo2W9JJxfa8yPOqTmbKKARU1IHYJnLLnchwUrV1J2r/hcHGklYve65DNdfZlqNPyzXOGD2
 u/HzxY5XsziM9H7dnL1g1ew==
X-Received: by 2002:a37:5b81:: with SMTP id
 p123mr23554532qkb.150.1593115930885; 
 Thu, 25 Jun 2020 13:12:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPSz4rD1cTkLTiDYIIsSKKfe4VQ60Qil8ZXRoEPj1gtJkYL675rJPfUDZFJRUNU3/jkr84Dg==
X-Received: by 2002:a37:5b81:: with SMTP id
 p123mr23554510qkb.150.1593115930658; 
 Thu, 25 Jun 2020 13:12:10 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id v12sm7126493qtj.32.2020.06.25.13.12.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 13:12:09 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 50D7C1814FC; Thu, 25 Jun 2020 22:12:08 +0200 (CEST)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 22:12:08 +0200
Message-ID: <159311592823.207748.268914285724823456.stgit@toke.dk>
In-Reply-To: <159311592607.207748.5904268231642411759.stgit@toke.dk>
References: <159311592607.207748.5904268231642411759.stgit@toke.dk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net 2/3] sch_cake: don't call diffserv parsing code
 when it is not needed
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
YW4gc2tpcCBpdAplbnRpcmVseSBpZiBDQUtFIGlzIGNvbmZpZ3VyZWQgdG8gbmVpdGhlciB1c2Ug
ZGlmZnNlcnYtYmFzZWQKY2xhc3NpZmljYXRpb24sIG5vciB0byB6ZXJvIG91dCB0aGUgZGlmZnNl
cnYgYml0cy4KCkZpeGVzOiBjODdiNGVjZGJlOGQgKCJzY2hfY2FrZTogTWFrZSBzdXJlIHdlIGNh
biB3cml0ZSB0aGUgSVAgaGVhZGVyIGJlZm9yZSBjaGFuZ2luZyBEU0NQIGJpdHMiKQpTaWduZWQt
b2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KLS0tCiBu
ZXQvc2NoZWQvc2NoX2Nha2UuYyB8ICAgMTMgKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQv
c2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCmluZGV4IGNhZTAwNmJlZjU2NS4uMDk0
ZDZlNjUyZGViIDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQvc2No
ZWQvc2NoX2Nha2UuYwpAQCAtMTU1MSw3ICsxNTUxLDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBj
YWtlX2Ryb3Aoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBza19idWZmICoqdG9fZnJlZSkKIAly
ZXR1cm4gaWR4ICsgKHRpbiA8PCAxNik7CiB9CiAKLXN0YXRpYyB1OCBjYWtlX2hhbmRsZV9kaWZm
c2VydihzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCB1MTYgd2FzaCkKK3N0YXRpYyB1OCBjYWtlX2hhbmRs
ZV9kaWZmc2VydihzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBib29sIHdhc2gpCiB7CiAJY29uc3QgaW50
IG9mZnNldCA9IHNrYl9uZXR3b3JrX29mZnNldChza2IpOwogCXUxNiAqYnVmLCBidWZfOwpAQCAt
MTYxMiwxNCArMTYxMiwxNyBAQCBzdGF0aWMgc3RydWN0IGNha2VfdGluX2RhdGEgKmNha2Vfc2Vs
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
QCAtMTYzMyw2ICsxNjM2LDggQEAgc3RhdGljIHN0cnVjdCBjYWtlX3Rpbl9kYXRhICpjYWtlX3Nl
bGVjdF90aW4oc3RydWN0IFFkaXNjICpzY2gsCiAJCXRpbiA9IHEtPnRpbl9vcmRlcltUQ19IX01J
Tihza2ItPnByaW9yaXR5KSAtIDFdOwogCiAJZWxzZSB7CisJCWlmICghd2FzaCkKKwkJCWRzY3Ag
PSBjYWtlX2hhbmRsZV9kaWZmc2Vydihza2IsIHdhc2gpOwogCQl0aW4gPSBxLT50aW5faW5kZXhb
ZHNjcF07CiAKIAkJaWYgKHVubGlrZWx5KHRpbiA+PSBxLT50aW5fY250KSkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK
