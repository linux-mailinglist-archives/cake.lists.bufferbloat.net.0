Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E040213A56
	for <lists+cake@lfdr.de>; Fri,  3 Jul 2020 14:54:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 331FC3CB45;
	Fri,  3 Jul 2020 08:54:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593780844;
	bh=JtxZUTd14UMotHwqU7EFikgOwCku1j39Dx3E3qP/w0Q=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JXQ8aqzyy+7uOj7uAbShv2ze2axGtXAEGIuZe3g/wtTK6/hWKHCUTUzbnDQ4Lz792
	 6DMfDG3+r79tkkReykcPh5ySQyG1sHdfJK9UFAm/kBMgDYRb9bqe5Nf/XiPfUQ9QiL
	 knTriQQAbsddkzbVIno6m7W848qYCRiqPl61cxvsbIuopnAPy6UYSkDkeKbn0dFNNB
	 lqs1YnheUpUuDXr+9KM2A5kcRTtRzc38MOXIFTvOcFKKZwhz2sN8Eb5IPBjScZW3X0
	 Igu5ypIVJBy3YuKmDfQQ7n9GIwZ9u8FfuJl75qmDkUIXKc07wIKBI1yyJeKfHMvi+z
	 nYwiFXUZTNniA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CB09D3B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Jul 2020 08:54:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593780843;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+k8RkC7JKMZr+sP+ag5DuGVQOXCROYbmnKZSv7DDXPs=;
 b=RxO7nC7avGfbqUI7fscgejRsT8AAudt/LkmKGze2tBQWDsrNhLSmoezZan4n6rE8cJlK9/
 yi8NP+CzkkmVHQRuNaWrKKi6mbMNxs2LO7/BShICZMyKzf8SO42PcK71gjXgWgmAWluT5s
 r2E/yiIBexMhgHcNCeYS9HmHDLkA6XM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-435-RIHTo6adNXWL7f36P0xS5A-1; Fri, 03 Jul 2020 08:53:59 -0400
X-MC-Unique: RIHTo6adNXWL7f36P0xS5A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8ED861052510;
 Fri,  3 Jul 2020 12:53:57 +0000 (UTC)
Received: from new-host-5 (unknown [10.40.192.126])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 478C21972A;
 Fri,  3 Jul 2020 12:53:51 +0000 (UTC)
Message-ID: <4297936b4cc7d6cdcb51ccc10331467f39978795.camel@redhat.com>
From: Davide Caratti <dcaratti@redhat.com>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, 
 davem@davemloft.net
In-Reply-To: <20200703120523.465334-1-toke@redhat.com>
References: <20200703120523.465334-1-toke@redhat.com>
Organization: red hat
Date: Fri, 03 Jul 2020 14:53:50 +0200
MIME-Version: 1.0
User-Agent: Evolution 3.36.3 (3.36.3-1.fc32) 
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: Re: [Cake] [PATCH net] sched: consistently handle layer3 header
 accesses in the presence of VLANs
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Ilya Ponetayev <i.ponetaev@ndmsystems.com>,
 Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

aGVsbG8gVG9rZSwKCnRoYW5rcyBmb3IgYW5zd2VyaW5nIQoKT24gRnJpLCAyMDIwLTA3LTAzIGF0
IDE0OjA1ICswMjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4gICB3aGlsZSAo
cHJvdG8gPT0gaHRvbnMoRVRIX1BfODAyMVEpIHx8IHByb3RvID09IGh0b25zKEVUSF9QXzgwMjFB
RCkpIHsKCm1heWJlIHRoaXMgbGluZSBiZSBzaG9ydGVuZWQsIHNpbmNlIGlmX3ZsYW4uaCBoYXMg
WzFdOgoKd2hpbGUgKGV0aF90eXBlX3ZsYW4ocHJvdG8pKSB7CiAJLi4uCn0KCklmIEkgcmVhZCB3
ZWxsLCB0aGUgYmlnZ2VzdCBjaGFuZ2UgZnJvbSBmdW5jdGlvbmFsIHBvaW50IG9mIHZpZXcgaXMg
dGhhdApub3cgcWRpc2NzIGNhbiBzZXQgdGhlIEVDTiBiaXQgYWxzbyBvbiBub24tYWNjZWxlcmF0
ZWQgVkxBTiBwYWNrZXRzIGFuZApRaW5RLXRhZ2dlZCBwYWNrZXRzLCBpZiB0aGUgSVAgaGVhZGVy
IGlzIHRoZSBvdXRlci1tb3N0IGhlYWRlciBhZnRlciBWTEFOOwphbmQgdGhlIHNhbWUgYXBwbGll
cyB0byBhbG1vc3QgYWxsIG5ldC9zY2hlZCBmb3JtZXIgdXNlcnMgb2Ygc2tiLT5wcm90b2NvbCAK
b3IgdGNfc2tiX3Byb3RvY29sKCkuCgpRdWVzdGlvbiAoc29ycnkgaW4gYWR2YW5jZSBiZWNhdXNl
IGl0IG1pZ2h0IGJlIGEgZHVtYiBvbmUgOikgKToKCmRvIHlvdSBrbm93IHdoeSBjbHNfZmxvd2Vy
LCBhY3RfY3QsIGFjdF9tcGxzIGFuZCBhY3RfY29ubm1hcmsga2VlcCByZWFkaW5nCnNrYi0+cHJv
dG9jb2w/IGlzIHRoYXQgaW50ZW50aW9uYWw/CgooZm9yIGFjdF9tcGxzIHRoYXQgZG9lc24ndCBs
b29rIGludGVudGlvbmFsLCBhbmQgcHJvYmFibHkgdGhlIHJlc3VsdCBpcwp0aGF0IHRoZSBCT1Mg
Yml0IGlzIG5vdCBzZXQgY29ycmVjdGx5IGlmIHNvbWVvbmUgdHJpZXMgdG8gcHVzaC9wb3AgYSBs
YWJlbApmb3IgYSBub24tYWNjZWxlcmF0ZWQgb3IgUWluUSBwYWNrZXQuIEJ1dCBJIGRpZG4ndCB0
cnkgaXQgZXhwZXJpbWVudGFsbHkKOikgKQoKWzFdIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29t
L2xpbnV4L2xhdGVzdC9zb3VyY2UvaW5jbHVkZS9saW51eC9pZl92bGFuLmgjTDMwMAoKLS0gCmRh
dmlkZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMu
YnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
