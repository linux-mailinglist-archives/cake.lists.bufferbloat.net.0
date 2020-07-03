Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2D721404B
	for <lists+cake@lfdr.de>; Fri,  3 Jul 2020 22:22:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5D2B43CB41;
	Fri,  3 Jul 2020 16:22:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593807770;
	bh=7DCraOGGsLw+B6LBhD8tesewOUI85mV1ihtTYFKKgRs=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oTfBJGiP3lsVUyqtBHsUaCNPgRtk31uK5XkAq6mQkqDvFzKEt4k8x18LIUdu1r1I0
	 twWDyubvWhNbppVTrB55akzDF8jAIX8Xl7mLGIPES8XAEH3sbwRUjHqKrw96XpBUFu
	 tASt61Hh0rQRJDz6uP74hYiJjqPbnoa8wolqNPCPiVCWWCB8WuE4y0Ps6VreEUEp7b
	 Lul1ONPB0OjNP713oo+6WH92stICQfJcMZEdbrUslvTLxi1x96JOXwlqVLDhu65G7n
	 b/Yi6EcGyrMkpliY6rT6KxKN66osmevqMM4HfF4bui0r+vWmwt2py7SiamEtjVmwge
	 F2Vr+ZfbQH/OA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5D1073B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Jul 2020 16:22:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593807769;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SSKfs+k7KWs+Ghy582Ro4O+rljoRJShI5w68ibRr9W8=;
 b=LxGqkurs+dl4itRyiimGYRxOBF1JkjNTAmVKV/6DQIbmFSZLAJuXcaTPwzHG12abocLgMd
 rF4s3ylW6gJI3uRcvtMg+itBdHLejWMiBMBaHvXgamql47XcUggTjxo7PJL0E4xi2Cx/Wy
 jj1L7YlgYAYLiEtKW6qzYq1iJ8IP3pw=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-455-86PuNWwXOZabFJNED6tPtA-1; Fri, 03 Jul 2020 16:22:47 -0400
X-MC-Unique: 86PuNWwXOZabFJNED6tPtA-1
Received: by mail-qv1-f69.google.com with SMTP id cv20so10317249qvb.12
 for <cake@lists.bufferbloat.net>; Fri, 03 Jul 2020 13:22:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=s0bOOykRbSP71Y9q/RxlG+HHNAGiz0/Va3IAVPaB7pI=;
 b=S+3sCco5/rYcwSBOOhus6VWffjCogCriRYMTkEdzkNGsJ3Omf5vCBYqifajKcIbJDu
 j/szjjVnWk0LXPSSZDfAc8yNPsGh6td0QfZkkhFfWU1f3159jJ6P1rpklwV3l9PjY6b8
 EnaHoxQHEcXZjjmh7Zzjvyj5eNbe32wcB7daNswB6XL+IEc9o41cDmAmb6R4pgmrVp58
 dRls84BIO7jm6a6iGxpzdLDWVpQ869oK+OStDNQY/DYvisWacsj3f+JWimr7Go5HtCEs
 61KCE0fUv+0NJT8ebEe9AWFWdH7yNKad3eKlmV2/TkpFQZAB1B9dJKCkFVI2DTpnuieh
 0u+w==
X-Gm-Message-State: AOAM532H27kDAV63a1zCcHylSuSk0SlZtJsJ/WDsXQ2R2QnVfMMlWauA
 ONp6RVeI10Xb1PjVrOvL4dn5nBYwWdXCKH8O/e+pWwUI8zXwla6II7/aRHvwhFUceyMYbPjMlc2
 vubAH7RCmv9d5PHsbCJ4isw==
X-Received: by 2002:a37:aa87:: with SMTP id t129mr36885110qke.70.1593807766901; 
 Fri, 03 Jul 2020 13:22:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwH9YKEGxb7TOlmxT4oJXSsUaaopLdXHc7EcazKMQ/EVfpCBvoYZGTZl1h2NM5CjHOoSan96w==
X-Received: by 2002:a37:aa87:: with SMTP id t129mr36885095qke.70.1593807766692; 
 Fri, 03 Jul 2020 13:22:46 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id t48sm13060329qtb.50.2020.07.03.13.22.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jul 2020 13:22:45 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 0155B1804A8; Fri,  3 Jul 2020 22:22:42 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Roman Mashak <mrv@mojatatu.com>
In-Reply-To: <85sge82w34.fsf@mojatatu.com>
References: <20200703152239.471624-1-toke@redhat.com>
 <85sge82w34.fsf@mojatatu.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 03 Jul 2020 22:22:42 +0200
Message-ID: <87k0zkmjql.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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

Um9tYW4gTWFzaGFrIDxtcnZAbW9qYXRhdHUuY29tPiB3cml0ZXM6Cgo+IFRva2UgSMO4aWxhbmQt
SsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPiB3cml0ZXM6Cj4KPgo+IFsuLi5dCj4KPj4gKy8q
IEEgZ2V0dGVyIGZvciB0aGUgU0tCIHByb3RvY29sIGZpZWxkIHdoaWNoIHdpbGwgaGFuZGxlIFZM
QU4gdGFncyBjb25zaXN0ZW50bHkKPj4gKyAqIHdoZXRoZXIgVkxBTiBhY2NlbGVyYXRpb24gaXMg
ZW5hYmxlZCBvciBub3QuCj4+ICsgKi8KPj4gK3N0YXRpYyBpbmxpbmUgX19iZTE2IHNrYl9wcm90
b2NvbChjb25zdCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBib29sIHNraXBfdmxhbikKPj4gK3sKPj4g
Kwl1bnNpZ25lZCBpbnQgb2Zmc2V0ID0gc2tiX21hY19vZmZzZXQoc2tiKSArIHNpemVvZihzdHJ1
Y3QgZXRoaGRyKTsKPj4gKwlfX2JlMTYgcHJvdG8gPSBza2ItPnByb3RvY29sOwo+PiArCXN0cnVj
dCB2bGFuX2hkciB2aGRyLCAqdmg7Cj4KPiBOaXQ6IHlvdSBjb3VsZCBtb3ZlIHZoZHIgYW5kICp2
aCBkZWZpbml0aW9ucyBpbnNpZGUgdGhlIHdoaWxlIGxvb3AsCj4gYmVjYXVzZSBvZiB0aGVpciBp
bm5lciBzY29wZSB1c2UuCgpTdXJlLCBjYW4gZG8uCgotVG9rZQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=
