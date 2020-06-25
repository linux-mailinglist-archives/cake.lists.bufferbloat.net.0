Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD07209DE1
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 13:55:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id ED7713CB39;
	Thu, 25 Jun 2020 07:55:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593086111;
	bh=Zs4Rz/LF3R9QYQZuAFaHn7gkJ2IhnSVxEKTP9LytgnU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dHeD4lFCwwqd38aSw+xuAf6/mnGKYVEeBXeIZLyAv85b9zK+wrFPB/AP0xDxzshze
	 kndEoXc+IH2ah4lKUkH5gHDcwlwypdwe0jz0iakWZa+qXKhPWoqLO5vaeV7hXdb0e0
	 xEDISbOn53g3QGr7vPuLPjjCawv1jUG/erlw0N9SvsbAWvfDhcd+QES6iiBjb0i85k
	 Yzh44n+/NNBhHYUOb4f3Z3vO/G9yEEI3xke1WnqqUV89CpIu6iXdm/mbKRtKTTB0wW
	 doMMd13YSg5/jm1f3/rhlSN9hnJAdwjmpKlDNN/37j3TuNC1mZoj4M0ZQxwuzgf0g+
	 4kLMpM/YC7tgA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E21C43B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 07:55:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593086109;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+GyCVjS8LavJYzTtjsaGAZKXMsx/0KStkzJq3dfYbt4=;
 b=jH+e2480V7wuyhJC/bZoAHb++MviINYUzkq/R47cu+6gSNK+/8hfLs0PKqySEeNV4M8H33
 y43gOCjyNwtKktyeSGdpI2VNn0gImOohEUoGE2qiENnWg13Yguh2vrRW7sJzZfoOc1AphE
 NevEVpDNM3WVXnoyDpX3SCDClwkpBr8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-ZOXftZCVMje6OwBwI6m3aQ-1; Thu, 25 Jun 2020 07:55:08 -0400
X-MC-Unique: ZOXftZCVMje6OwBwI6m3aQ-1
Received: by mail-wm1-f70.google.com with SMTP id g124so6617373wmg.6
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 04:55:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=+GyCVjS8LavJYzTtjsaGAZKXMsx/0KStkzJq3dfYbt4=;
 b=KlQoURu7H3PqWgLUoxh8XsShoGd7z/tNUjO7q16GPS34+THdEJQ998n60GP0a+OPTi
 1fAP8NGvz5VyzPqoxdTbj10VVks0/PAJSzmKXmwkqsttMs1mwdSSMhtI6y2Nu/wcS3Gk
 tFMoK4CqZae/Bb5LUEKCLrgS3tELh+z98ZiMhMzy+nXA8b6A+N8YZpaDaR4yGiboQMea
 vvtw8P965wM0EjSs1pTEDDOWNoiNM56N93yT/aSmBy1YXVPuyqhxg+XJuCzfWnXmID/h
 IiDbHXppYffu8MvWf4GTyAOMvtaxenzfrzXH3P3FoyOR/vDc/Zp22GEu6XN+NlKvr5gR
 f/zg==
X-Gm-Message-State: AOAM530A+YWyQUyQDbNyqnDYoWKSEg7gV+uRftXRhQxWwiaUYLjkF6VC
 WdODZWkZMTBTc/rdvc8dL76YJmeEeOD/+tlQf8pblL5nP4QfeRzIybPLYKCh0kFQf2lW+lNgJ6G
 8lbOTwHd1jiVsVOz8ecsHuQ==
X-Received: by 2002:adf:de12:: with SMTP id b18mr29199206wrm.390.1593086106426; 
 Thu, 25 Jun 2020 04:55:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzixQVDcysECuSK19xqNfgAFGxuWDWVR/lLk1obBH5HLClAUOnlT7+gODGTqff+OoDNWxACMw==
X-Received: by 2002:adf:de12:: with SMTP id b18mr29199182wrm.390.1593086106142; 
 Thu, 25 Jun 2020 04:55:06 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id d24sm11573252wmb.45.2020.06.25.04.55.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 04:55:05 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id F201B1814FA; Thu, 25 Jun 2020 13:55:03 +0200 (CEST)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 13:55:03 +0200
Message-ID: <159308610390.190211.17831843954243284203.stgit@toke.dk>
In-Reply-To: <159308610282.190211.9431406149182757758.stgit@toke.dk>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net-next 1/5] sch_cake: fix IP protocol handling in
 the presence of VLAN tags
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

RnJvbTogSWx5YSBQb25ldGF5ZXYgPGkucG9uZXRhZXZAbmRtc3lzdGVtcy5jb20+CgpDQUtFIHdh
cyB1c2luZyB0aGUgcmV0dXJuIHZhbHVlIG9mIHRjX3NrYl9wcm90b2NvbCgpIGFuZCBleHBlY3Rp
bmcgaXQgdG8gYmUKdGhlIElQIHByb3RvY29sIHR5cGUuIFRoaXMgY2FuIGZhaWwgaW4gdGhlIHBy
ZXNlbmNlIG9mIFFpblEgVkxBTiB0YWdzLAptYWtpbmcgQ0FLRSB1bmFibGUgdG8gaGFuZGxlIEVD
TiBtYXJraW5nIGFuZCBkaWZmc2VydiBwYXJzaW5nIGluIHRoaXMgY2FzZS4KRml4IHRoaXMgYnkg
aW1wbGVtZW50aW5nIG91ciBvd24gdmVyc2lvbiBvZiB0Y19za2JfcHJvdG9jb2woKSwgd2hpY2gg
d2lsbAp1c2Ugc2tiLT5wcm90b2NvbCBkaXJlY3RseSwgYnV0IGFsc28gcGFyc2UgYW5kIHNraXAg
b3ZlciBhbnkgVkxBTiB0YWdzIGFuZApyZXR1cm4gdGhlIGlubmVyIHByb3RvY29sIG51bWJlciBp
bnN0ZWFkLgoKQWxzbyBmaXggQ0UgbWFya2luZyBieSBpbXBsZW1lbnRpbmcgYSB2ZXJzaW9uIG9m
IElORVRfRUNOX3NldF9jZSgpIHRoYXQKdXNlcyB0aGUgc2FtZSBwYXJzaW5nIHJvdXRpbmUuCgpG
aXhlczogZWE4MjUxMTUxOGY0ICgic2NoX2Nha2U6IEFkZCBOQVQgYXdhcmVuZXNzIHRvIHBhY2tl
dCBjbGFzc2lmaWVyIikKRml4ZXM6IGIyMTAwY2M1NmZjYSAoInNjaF9jYWtlOiBVc2UgdGNfc2ti
X3Byb3RvY29sKCkgaGVscGVyIGZvciBnZXR0aW5nIHBhY2tldCBwcm90b2NvbCIpCkZpeGVzOiAw
NDZmNmZkNWRhZWYgKCJzY2hlZDogQWRkIENvbW1vbiBBcHBsaWNhdGlvbnMgS2VwdCBFbmhhbmNl
ZCAoY2FrZSkgcWRpc2MiKQpTaWduZWQtb2ZmLWJ5OiBJbHlhIFBvbmV0YXlldiA8aS5wb25ldGFl
dkBuZG1zeXN0ZW1zLmNvbT4KWyBzcXVhc2ggb3JpZ2luYWwgdHdvIHBhdGNoZXMsIHJld3JpdGUg
Y29tbWl0IG1lc3NhZ2UgXQpTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
PHRva2VAcmVkaGF0LmNvbT4KLS0tCiBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8ICAgNTIgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFu
Z2VkLCA0OSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL25ldC9z
Y2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKaW5kZXggNjBmOGFlNTc4ODE5
Li4wZjU5NGQ4OGE5NTcgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9zY2hfY2FrZS5jCisrKyBiL25l
dC9zY2hlZC9zY2hfY2FrZS5jCkBAIC00OTcsNiArNDk3LDUyIEBAIHN0YXRpYyBib29sIGNvYmFs
dF9xdWV1ZV9lbXB0eShzdHJ1Y3QgY29iYWx0X3ZhcnMgKnZhcnMsCiAJcmV0dXJuIGRvd247CiB9
CiAKK3N0YXRpYyBfX2JlMTYgY2FrZV9za2JfcHJvdG8oY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNr
YikKK3sKKwl1bnNpZ25lZCBpbnQgb2Zmc2V0ID0gc2tiX21hY19vZmZzZXQoc2tiKSArIHNpemVv
ZihzdHJ1Y3QgZXRoaGRyKTsKKwlfX2JlMTYgcHJvdG8gPSBza2ItPnByb3RvY29sOworCXN0cnVj
dCB2bGFuX2hkciB2aGRyLCAqdmg7CisKKwl3aGlsZSAocHJvdG8gPT0gaHRvbnMoRVRIX1BfODAy
MVEpIHx8IHByb3RvID09IGh0b25zKEVUSF9QXzgwMjFBRCkpIHsKKwkJdmggPSBza2JfaGVhZGVy
X3BvaW50ZXIoc2tiLCBvZmZzZXQsIHNpemVvZih2aGRyKSwgJnZoZHIpOworCQlpZiAoIXZoKQor
CQkJYnJlYWs7CisKKwkJcHJvdG8gPSB2aC0+aF92bGFuX2VuY2Fwc3VsYXRlZF9wcm90bzsKKwkJ
b2Zmc2V0ICs9IHNpemVvZih2aGRyKTsKKwl9CisKKwlyZXR1cm4gcHJvdG87Cit9CisKK3N0YXRp
YyBpbnQgY2FrZV9zZXRfY2Uoc3RydWN0IHNrX2J1ZmYgKnNrYikKK3sKKwlpbnQgd2xlbiA9IHNr
Yl9uZXR3b3JrX29mZnNldChza2IpOworCisJc3dpdGNoIChjYWtlX3NrYl9wcm90byhza2IpKSB7
CisJY2FzZSBodG9ucyhFVEhfUF9JUCk6CisJCXdsZW4gKz0gc2l6ZW9mKHN0cnVjdCBpcGhkcik7
CisJCWlmICghcHNrYl9tYXlfcHVsbChza2IsIHdsZW4pIHx8CisJCSAgICBza2JfdHJ5X21ha2Vf
d3JpdGFibGUoc2tiLCB3bGVuKSkKKwkJCXJldHVybiAwOworCisJCXJldHVybiBJUF9FQ05fc2V0
X2NlKGlwX2hkcihza2IpKTsKKworCWNhc2UgaHRvbnMoRVRIX1BfSVBWNik6CisJCXdsZW4gKz0g
c2l6ZW9mKHN0cnVjdCBpcHY2aGRyKTsKKwkJaWYgKCFwc2tiX21heV9wdWxsKHNrYiwgd2xlbikg
fHwKKwkJICAgIHNrYl90cnlfbWFrZV93cml0YWJsZShza2IsIHdsZW4pKQorCQkJcmV0dXJuIDA7
CisKKwkJcmV0dXJuIElQNl9FQ05fc2V0X2NlKHNrYiwgaXB2Nl9oZHIoc2tiKSk7CisKKwlkZWZh
dWx0OgorCQlyZXR1cm4gMDsKKwl9CisKKwlyZXR1cm4gMDsKK30KKwogLyogQ2FsbCB0aGlzIHdp
dGggYSBmcmVzaGx5IGRlcXVldWVkIHBhY2tldCBmb3IgcG9zc2libGUgY29uZ2VzdGlvbiBtYXJr
aW5nLgogICogUmV0dXJucyB0cnVlIGFzIGFuIGluc3RydWN0aW9uIHRvIGRyb3AgdGhlIHBhY2tl
dCwgZmFsc2UgZm9yIGRlbGl2ZXJ5LgogICovCkBAIC01NDksNyArNTk1LDcgQEAgc3RhdGljIGJv
b2wgY29iYWx0X3Nob3VsZF9kcm9wKHN0cnVjdCBjb2JhbHRfdmFycyAqdmFycywKIAogCWlmIChu
ZXh0X2R1ZSAmJiB2YXJzLT5kcm9wcGluZykgewogCQkvKiBVc2UgRUNOIG1hcmsgaWYgcG9zc2li
bGUsIG90aGVyd2lzZSBkcm9wICovCi0JCWRyb3AgPSAhKHZhcnMtPmVjbl9tYXJrZWQgPSBJTkVU
X0VDTl9zZXRfY2Uoc2tiKSk7CisJCWRyb3AgPSAhKHZhcnMtPmVjbl9tYXJrZWQgPSBjYWtlX3Nl
dF9jZShza2IpKTsKIAogCQl2YXJzLT5jb3VudCsrOwogCQlpZiAoIXZhcnMtPmNvdW50KQpAQCAt
NTkyLDcgKzYzOCw3IEBAIHN0YXRpYyBib29sIGNha2VfdXBkYXRlX2Zsb3drZXlzKHN0cnVjdCBm
bG93X2tleXMgKmtleXMsCiAJYm9vbCByZXYgPSAhc2tiLT5fbmZjdCwgdXBkID0gZmFsc2U7CiAJ
X19iZTMyIGlwOwogCi0JaWYgKHRjX3NrYl9wcm90b2NvbChza2IpICE9IGh0b25zKEVUSF9QX0lQ
KSkKKwlpZiAoY2FrZV9za2JfcHJvdG8oc2tiKSAhPSBodG9ucyhFVEhfUF9JUCkpCiAJCXJldHVy
biBmYWxzZTsKIAogCWlmICghbmZfY3RfZ2V0X3R1cGxlX3NrYigmdHVwbGUsIHNrYikpCkBAIC0x
NTU2LDcgKzE2MDIsNyBAQCBzdGF0aWMgdTggY2FrZV9oYW5kbGVfZGlmZnNlcnYoc3RydWN0IHNr
X2J1ZmYgKnNrYiwgdTE2IHdhc2gpCiAJaW50IHdsZW4gPSBza2JfbmV0d29ya19vZmZzZXQoc2ti
KTsKIAl1OCBkc2NwOwogCi0Jc3dpdGNoICh0Y19za2JfcHJvdG9jb2woc2tiKSkgeworCXN3aXRj
aCAoY2FrZV9za2JfcHJvdG8oc2tiKSkgewogCWNhc2UgaHRvbnMoRVRIX1BfSVApOgogCQl3bGVu
ICs9IHNpemVvZihzdHJ1Y3QgaXBoZHIpOwogCQlpZiAoIXBza2JfbWF5X3B1bGwoc2tiLCB3bGVu
KSB8fAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
