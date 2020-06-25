Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A31E20A666
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 22:12:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4364A3CB48;
	Thu, 25 Jun 2020 16:12:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593115938;
	bh=Q25zO4G6+Qi7wFJMqspeQNd91D8Gs+fqO/I1h1n6SQk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eOYbs3pLeUFizXBa9OMpv1P3ibzE4W/b/7v8j6dRsUTqgG0YhN6xML4qL7kAOsgb4
	 J881FJloJysSCXlryY0DNZoIZOMxxsawl7lU0MLpj5jFEEzVTLf9pNN70uSWKmST99
	 eTDYsaJ/YeO8xPHSMLeFlCA+HCIP3Ls94jIBI5hvMRg6by3V4S1eNpsoCmgG0KWd72
	 iGYXVz9BJe2ICEnzufzupdyPQCANxrkdGGhHTWyinghMHeUu/2abzP0g3Iz5kNBWbP
	 dKZajPXRVLIVpOsfU2XxPP/f5Hf7SZzGIq5tHra4FfXzkNHQfNX6xPksESe5tCVsgO
	 1peBCuk6W2nZg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 699EE3CB46
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 16:12:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593115937;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=epUbAMlVxZu5S6QNhQY9u/K2VMd6EIBVfXGl2Kn/Ahc=;
 b=gaQtssNALf5AYBzSJBJouvpsySGr5wi1TJy53AXixOTmKby4Kp9zIwTC8Wc3lcoBMQIMqv
 o8DqpsVDm88mx60oH5uh3DYoVWUxfO1CzqmPExV9GJ0cz+1ZbO7SWWPq3YPAexa2rGeeJm
 6yBmpfdldI+9IRa615Z6mGcmY3V2lNw=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-206-tQdKchpqNS6gS-8EPFaHuw-1; Thu, 25 Jun 2020 16:12:12 -0400
X-MC-Unique: tQdKchpqNS6gS-8EPFaHuw-1
Received: by mail-ej1-f70.google.com with SMTP id h26so5772857ejb.5
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 13:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=epUbAMlVxZu5S6QNhQY9u/K2VMd6EIBVfXGl2Kn/Ahc=;
 b=ZCwZvmMav/BH7ave/Xep/bWeVxdwOFDgU32S21AlcVIHmdVL2xdhfFWdp7K/b9GWmK
 HCjwZ7KfOBO0Tdi53xiZ6UDQbPchDaZ1Z04WCT3gwWOc2OMAKq4bjEAdD322U38iDxO7
 55AwdKi0/3xrkKjNlZb+qWl0A4TQXga5ID4hQQgtoTUAz1oQjyJ3tZ5m7DjYbLQ07X1i
 i3zCvTyC4mRFU7V+HeGu+XAmNU/gns9CtxeqKOaG83qYO0G+KIyUt4z+CVW3XteMkr38
 AY/wpsoWSXascFAY+tPzwsu0ssLbZImcQ1pZSGeYvn89bCY9E6mZjKWpvViZldaAJLKm
 bR3g==
X-Gm-Message-State: AOAM530cpspRy1MqpeASI7wmHRhZbN0kYwS6uuzzSEIfrIyRvUoxSehZ
 E1K7uIYDb11wPzYbVXCJDjCf/Q4dWcRIvfmWPCj2NdDyAxth16FknsZ16Bkg/24i16tF38bbjtH
 VbeK1PBWpU23cWGzt/8n34A==
X-Received: by 2002:a05:6402:b4b:: with SMTP id
 bx11mr8584690edb.286.1593115931416; 
 Thu, 25 Jun 2020 13:12:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy21WLj5k8KlY5WJysNtXwMo9tGZQb/0mudpfAo6UiV7lbH1mtRWTn9rLRAHpS5XmsTnEtPaQ==
X-Received: by 2002:a05:6402:b4b:: with SMTP id
 bx11mr8584678edb.286.1593115931254; 
 Thu, 25 Jun 2020 13:12:11 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id p13sm18876978edq.50.2020.06.25.13.12.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 13:12:09 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 6796D1814FA; Thu, 25 Jun 2020 22:12:09 +0200 (CEST)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 22:12:09 +0200
Message-ID: <159311592933.207748.4033228977231895526.stgit@toke.dk>
In-Reply-To: <159311592607.207748.5904268231642411759.stgit@toke.dk>
References: <159311592607.207748.5904268231642411759.stgit@toke.dk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net 3/3] sch_cake: fix a few style nits
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

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpJIHNwb3R0
ZWQgYSBmZXcgbml0cyB3aGVuIGNvbXBhcmluZyB0aGUgaW4tdHJlZSB2ZXJzaW9uIG9mIHNjaF9j
YWtlIHdpdGgKdGhlIG91dC1vZi10cmVlIG9uZTogQSByZWR1bmRhbnQgZXJyb3IgdmFyaWFibGUg
ZGVjbGFyYXRpb24gc2hhZG93aW5nIGFuCm91dGVyIGRlY2xhcmF0aW9uLCBhbmQgYW4gaW5kZW50
YXRpb24gYWxpZ25tZW50IGlzc3VlLiBGaXggYm90aCBvZiB0aGVzZS4KCkZpeGVzOiAwNDZmNmZk
NWRhZWYgKCJzY2hlZDogQWRkIENvbW1vbiBBcHBsaWNhdGlvbnMgS2VwdCBFbmhhbmNlZCAoY2Fr
ZSkgcWRpc2MiKQpTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VA
cmVkaGF0LmNvbT4KLS0tCiBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8ICAgIDQgKystLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9u
ZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCmluZGV4IDA5NGQ2ZTY1
MmRlYi4uY2E4MTM2OTc3MjhlIDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysg
Yi9uZXQvc2NoZWQvc2NoX2Nha2UuYwpAQCAtMjcxNSw3ICsyNzE1LDcgQEAgc3RhdGljIGludCBj
YWtlX2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwKIAlxZGlzY193
YXRjaGRvZ19pbml0KCZxLT53YXRjaGRvZywgc2NoKTsKIAogCWlmIChvcHQpIHsKLQkJaW50IGVy
ciA9IGNha2VfY2hhbmdlKHNjaCwgb3B0LCBleHRhY2spOworCQllcnIgPSBjYWtlX2NoYW5nZShz
Y2gsIG9wdCwgZXh0YWNrKTsKIAogCQlpZiAoZXJyKQogCQkJcmV0dXJuIGVycjsKQEAgLTMwMzIs
NyArMzAzMiw3IEBAIHN0YXRpYyBpbnQgY2FrZV9kdW1wX2NsYXNzX3N0YXRzKHN0cnVjdCBRZGlz
YyAqc2NoLCB1bnNpZ25lZCBsb25nIGNsLAogCQkJUFVUX1NUQVRfUzMyKEJMVUVfVElNRVJfVVMs
CiAJCQkJICAgICBrdGltZV90b191cygKIAkJCQkJICAgICBrdGltZV9zdWIobm93LAotCQkJCQkJ
ICAgICBmbG93LT5jdmFycy5ibHVlX3RpbWVyKSkpOworCQkJCQkJICAgICAgIGZsb3ctPmN2YXJz
LmJsdWVfdGltZXIpKSk7CiAJCX0KIAkJaWYgKGZsb3ctPmN2YXJzLmRyb3BwaW5nKSB7CiAJCQlQ
VVRfU1RBVF9TMzIoRFJPUF9ORVhUX1VTLAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
