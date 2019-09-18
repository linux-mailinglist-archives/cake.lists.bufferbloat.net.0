Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C12DB60D1
	for <lists+cake@lfdr.de>; Wed, 18 Sep 2019 11:54:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CD5E63CB38;
	Wed, 18 Sep 2019 05:54:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568800445;
	bh=EtJ8B7Y9dFlTnvq/hQD0gwz+IKItf7cF8dMtQOvf+WU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cdA+rezPrKhE7DR8QrTw/Vb2Xbylm1lJcTtOb1jhLziD6XkwNwSxYc+4OE6N/xHES
	 VwWwMRPO1vw8MFgWd4AxoX1EPp0+PQ9cGk2tV0EuofkgwjthkBG8igHWWq2OHbahb0
	 0bg9n3xGjOeFulVLKL2goDURJbpFlRYc7BaxuBrAAa+lizcq/MwlZP4t01IYHd4VUQ
	 19UDslROqpvPGJrjSL21wcl2BgGyzpdrD/UwIJLqEfBDTtvd5LBngJ31ZDE4mEe8gr
	 6gN9nW1i2Qj8VKeD/TE2QdtZ+v/jc3wMZitV+4niDXX2MUA6toycWRzUYa6I9bMPZp
	 2I8EnvbJ8ZRjg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4E5403B29E
 for <cake@lists.bufferbloat.net>; Wed, 18 Sep 2019 05:54:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568800444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pnYpSjrtMPgn+5Q3vrHhxTHkPwXC69f2EB98iGGeCrw=;
 b=QH83cyePwZcmSn/ydIuqjrZBU+FtCAf0U+mZh2Lrepf4g5a9hvrZvS4BuRrKVQO3NLkfZ+
 lviVR332azcFulaTleTOsdfZLNCNOYfQt3CnpeyRIsTrx+CnYQ90K2t9nASF56p3DYksK0
 cjkuZjzPrMzZ3vniXWvTd9N/76LwJDI=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-361-gzO5BE6iMrO4YDIEpUB4fg-1; Wed, 18 Sep 2019 05:54:01 -0400
Received: by mail-ed1-f72.google.com with SMTP id h12so1372167eda.19
 for <cake@lists.bufferbloat.net>; Wed, 18 Sep 2019 02:54:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=L7b93gUDX3VjwMrd4eYQ5bCWVj3OrB1HdfXxGtwmcro=;
 b=UJE6xjV1UVp4uqA5wfzmA247dqWBwj/oolbgv0XlYse9FqfOkIfavSz67DPqkgysbZ
 sGLS6tpSjnY/lj0ZQcOEJyLCriOXQd9/4s8b7Bcj1wL/+vHAMd8XWdb8mq+qr0/NDQo8
 mKcpprj1DrEhg1idk7g+k4pXNg2kogiiBPBb/w6E9IkPL9+JfXETe+m0a/RR+qgbzwXg
 bJSUl4nE3SZNuo1aFLE2o524ESuECJJJILyRku6QC37/XmxsyaMgiONh9to3TNBokuUr
 4GF8IYonIBsqHau6MQIHfEzXUEhz/2XHjON8CIEO7DgpbqLVwxWZ0fONjOQ76rXvdVYI
 zJOA==
X-Gm-Message-State: APjAAAW4JI4xwk7q8aMoM/zf/pKhdqKux95pg7q3MvjWvBmFpOfGDe59
 qdXXZDl1hnbFAzYvWMkzV969HJmeXVWQUOu3QGHYNQzoMtcG3beM/LGunA8KVHVBbl5UTbDdKmm
 UU2eUjjEoeaWscjs0OGx/WQ==
X-Received: by 2002:a50:c908:: with SMTP id o8mr9312959edh.187.1568800440070; 
 Wed, 18 Sep 2019 02:54:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyDOOuf/axGNMy2Y0poZp8s70QUPVEKdYFp9rkOfBTtlE2UWrkahu+6xZXCzSGHyqRdn/JEUw==
X-Received: by 2002:a50:c908:: with SMTP id o8mr9312951edh.187.1568800439933; 
 Wed, 18 Sep 2019 02:53:59 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id l12sm940319edw.29.2019.09.18.02.53.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 02:53:59 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 8494418063E; Wed, 18 Sep 2019 11:53:58 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 cake@lists.bufferbloat.net
In-Reply-To: <3449acf8-e700-6b50-544f-b272165ad0e6@newmedia-net.de>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <878sqomoj4.fsf@toke.dk>
 <b52b59ac-c5f7-8015-c7dc-b82406b9002c@newmedia-net.de>
 <87h85cl4qk.fsf@toke.dk>
 <edee31d8-aa60-28d2-be83-38c85f1f0e6d@newmedia-net.de>
 <87r24fjm60.fsf@toke.dk>
 <3449acf8-e700-6b50-544f-b272165ad0e6@newmedia-net.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 18 Sep 2019 11:53:58 +0200
Message-ID: <877e66hqvd.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: gzO5BE6iMrO4YDIEpUB4fg-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Cake] cake memory consumption
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

U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKCj4gdGhlIHByb2JsZW0gaXMuIGkgdGVzdGVkIHJlc3RyaWN0aW5nIHRoZSBtZW1vcnkgdG8g
NCBtYi4gYnV0IGl0IHN0aWxsIAo+IHJ1bnMgb29tLiBzYW1lIG1lbW9yeSBjb25zdW1wdGlvbiBh
bmQgZnJvbSB0aGUgcWRpc2Mgc2hvdyBvdXRwdXQgaSBhbHNvIAo+IHNlZSB0aGF0IGp1c3QgYSBm
ZXcga2lsb2J5dGVzIGFyZSB1c2VkIGluIHRoYXQgcG9vbC4KPiBzbyB0aGUgcHJvYmxlbSB3aXRo
IGNha2UgbXVzdCBiZSBzb21ld2hlcmUgZWxzZS4gaXRzIG5vdCB0aGUgYnVmZmVyIAo+IGxpbWl0
LiBpIHNlZSB2YWx1ZXMgbGlrZSBtZW1vcnkgdXNlZDogMjIxNzZiIG9mIDRNYiB3aGljaCBpcyBy
ZWFsbHkgCj4gbm90aGluZy4gbW9zdCBxZGlzY3MgYXJlIDAgYW5kIHVudXNlZCBpbiB0aGF0IHNl
dHVwCgpIbW0sIHRoYXQgZG9lcyBzb3VuZCBvZGQuIEFyZSB5b3Ugc2VlaW5nIHRoZSAidG90YWwg
dXNlZCBtZW1vcnkiIGdvIHVwCmFzIHNvb24gYXMgeW91IGxvYWQgdGhlIHFkaXNjcyAod2l0aG91
dCBhbnkgdHJhZmZpYyk/CgpEb2VzIHRoZSBtZW1vcnkgZHJvcCBkb3duIGFnYWluIGlmIHlvdSBj
bGVhciB0aGUgcWRpc2MgY29uZmlnIGFuZCBnbwpiYWNrIHRvIGFuIGZxX2NvZGVsLWJhc2VkIG9u
ZT8KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
