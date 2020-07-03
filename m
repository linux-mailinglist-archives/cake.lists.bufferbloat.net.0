Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF2B214042
	for <lists+cake@lfdr.de>; Fri,  3 Jul 2020 22:20:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 17D133CB46;
	Fri,  3 Jul 2020 16:20:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593807615;
	bh=AMzxyjshgF4CbH2HYMJrwOFOyV6MhnXhl+XaGh4odeI=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gtDwHfcVT0juUedydtMtywS60pfC4JSl0HjERIrd+BUeBbz5bxQuO245yoSInIV1A
	 bicqbeSOxweyk0IeSOZ3WyV6uhjXWCgefJ19IwqXbiim6Hx+LQnBADWmlLQ2elpTUU
	 SyTmqymBFvI4mOnsJxqmsuFzcUZqHHUwC7q9VINVM+wmcCk81NLv6m/fIEX9uGTByU
	 BvvDy9qfhj3AOQDcZxyArlycWZEHGI/bQ3qcdLkj95NYvadBJVXftFGgfK6T2cpTDm
	 LpZrZpyeR4gqU529Q6Ir4ZRPlno5RNyeWzKMb/e0dyVSqOnLeGFfoh4gKszZ+e7O36
	 P3hnUPzebaTMg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9C48F3B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Jul 2020 16:16:31 -0400 (EDT)
Received: by mail-il1-x141.google.com with SMTP id x9so28212762ila.3
 for <cake@lists.bufferbloat.net>; Fri, 03 Jul 2020 13:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=vSkAi5uW/KdoEVuuahqoDhfz418sY3smPqYtLrhlpNE=;
 b=Ilc3Jvz42ijwqqK+rkc9cXcu3iy6y1GhdMnlD4YG2U1ucdAnCbDyv80vjcEB43rR+k
 phm1ZWZ3GZKWvP+sP9xRVvecpT7RWpIXQ0gOdzGRfOGI5JMJ8cHIq65SeQc+opTpciOO
 4WtKa1tWoBIxP+dHVAbGJ2fszNOlYqcZAJ8//bkUlY9KJ7Uy8gIhuewymgueMZv6Xi3k
 ffHUEawQjPNaIpjJlxALArX70q+eBnfjiuG0S667GnxZwlB/+AWmuOgPj9uecrlNOqc0
 AaXm7BqyUt3sU0Gn58DmTxn1oQoCIjA72+B3pS15WZYuXClCrH1adjVz24bBa5Py4TjG
 gBEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=vSkAi5uW/KdoEVuuahqoDhfz418sY3smPqYtLrhlpNE=;
 b=fFltsC61FLqAX2LeptvLflIwbrnX4UUV9FVbSi21lf2cLKLDHe+XfzNP51G0ou7xCo
 Rzlfse+qCmVSmhBl1mUOb3aomIqVMV6PJCWQl+nYC+6CkpvyqM/jRlyWCbvvKmMLmnY3
 6fK1s88rui3I3DaBTwBi1Lv9Lk3pmSt11TfGt4MCMhSj6X819jc1mkMjMd9cCN6QBL1R
 kcqThrXJOSxxHKQ/wZvPwBf+mh0lRvsBsCoJzY35ZDuZlmr7YjStCwqLY3ollFptNuuo
 Mkw0ty1dOcurBQ8b7c65cpcsLEkINAtjw+vqDoCZgz8V0Pb3J4b8tT0vSKsHQtWv6uH/
 y/qg==
X-Gm-Message-State: AOAM532BbQptlGIQOEjDgPZkYnftu9iiLJligzxJ6nuhLbFgipt7FoTN
 vg/yeB7LquKZ7XT1M39y0f9dag==
X-Google-Smtp-Source: ABdhPJywXGBX2FCiru00pDq5eOC4ovaPhHtffqUJ669uhhro61miUkt1/g5Qq8HSmVSDEUvVlEPkfQ==
X-Received: by 2002:a92:dc0f:: with SMTP id t15mr17295282iln.218.1593807391142; 
 Fri, 03 Jul 2020 13:16:31 -0700 (PDT)
Received: from sevai ([74.127.202.217])
 by smtp.gmail.com with ESMTPSA id s5sm3870830ilo.24.2020.07.03.13.16.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Jul 2020 13:16:30 -0700 (PDT)
From: Roman Mashak <mrv@mojatatu.com>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
References: <20200703152239.471624-1-toke@redhat.com>
Date: Fri, 03 Jul 2020 16:16:15 -0400
In-Reply-To: <20200703152239.471624-1-toke@redhat.com> ("Toke
 \=\?utf-8\?Q\?H\=C3\=B8iland-J\=C3\=B8rgensen\=22's\?\= message of "Fri,
 3 Jul 2020 17:22:39 +0200")
Message-ID: <85sge82w34.fsf@mojatatu.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 03 Jul 2020 16:20:14 -0400
Subject: Re: [Cake] [PATCH net v2] sched: consistently handle layer3 header
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
Cc: Davide Caratti <dcaratti@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 cake@lists.bufferbloat.net, Ilya Ponetayev <i.ponetaev@ndmsystems.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyaXRlczoKCgpbLi4u
XQoKPiArLyogQSBnZXR0ZXIgZm9yIHRoZSBTS0IgcHJvdG9jb2wgZmllbGQgd2hpY2ggd2lsbCBo
YW5kbGUgVkxBTiB0YWdzIGNvbnNpc3RlbnRseQo+ICsgKiB3aGV0aGVyIFZMQU4gYWNjZWxlcmF0
aW9uIGlzIGVuYWJsZWQgb3Igbm90Lgo+ICsgKi8KPiArc3RhdGljIGlubGluZSBfX2JlMTYgc2ti
X3Byb3RvY29sKGNvbnN0IHN0cnVjdCBza19idWZmICpza2IsIGJvb2wgc2tpcF92bGFuKQo+ICt7
Cj4gKwl1bnNpZ25lZCBpbnQgb2Zmc2V0ID0gc2tiX21hY19vZmZzZXQoc2tiKSArIHNpemVvZihz
dHJ1Y3QgZXRoaGRyKTsKPiArCV9fYmUxNiBwcm90byA9IHNrYi0+cHJvdG9jb2w7Cj4gKwlzdHJ1
Y3Qgdmxhbl9oZHIgdmhkciwgKnZoOwoKTml0OiB5b3UgY291bGQgbW92ZSB2aGRyIGFuZCAqdmgg
ZGVmaW5pdGlvbnMgaW5zaWRlIHRoZSB3aGlsZSBsb29wLApiZWNhdXNlIG9mIHRoZWlyIGlubmVy
IHNjb3BlIHVzZS4KCj4gKwo+ICsJaWYgKCFza2lwX3ZsYW4pCj4gKwkJLyogVkxBTiBhY2NlbGVy
YXRpb24gc3RyaXBzIHRoZSBWTEFOIGhlYWRlciBmcm9tIHRoZSBza2IgYW5kCj4gKwkJICogbW92
ZXMgaXQgdG8gc2tiLT52bGFuX3Byb3RvCj4gKwkJICovCj4gKwkJcmV0dXJuIHNrYl92bGFuX3Rh
Z19wcmVzZW50KHNrYikgPyBza2ItPnZsYW5fcHJvdG8gOiBwcm90bzsKPiArCj4gKwl3aGlsZSAo
ZXRoX3R5cGVfdmxhbihwcm90bykpIHsKPiArCQl2aCA9IHNrYl9oZWFkZXJfcG9pbnRlcihza2Is
IG9mZnNldCwgc2l6ZW9mKHZoZHIpLCAmdmhkcik7Cj4gKwkJaWYgKCF2aCkKPiArCQkJYnJlYWs7
Cj4gKwo+ICsJCXByb3RvID0gdmgtPmhfdmxhbl9lbmNhcHN1bGF0ZWRfcHJvdG87Cj4gKwkJb2Zm
c2V0ICs9IHNpemVvZih2aGRyKTsKPiArCX0KClsuLi5dCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cg==
