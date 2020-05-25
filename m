Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD861E0DF8
	for <lists+cake@lfdr.de>; Mon, 25 May 2020 13:58:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 45AFA3CB39;
	Mon, 25 May 2020 07:58:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590407924;
	bh=w+T6+Y68k8t1WtJ479oqzhn1BYnjAplZQdeVU83cQlk=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bdx5owegucSNxwQ8V0gc/r6zoWQDRSRPLyOOZ1MAfz/XER+D1zx1ZaHQ4+z6bxjvG
	 RlsL366IYJ5iAxdw84pRCcLn1j5WgAujYN9yXHcvhiV3deguE/zZO/kR8ot0jUMjCC
	 1YAvTak2TrlCjvvHyUlz4e5oFEXkAFYWiVc7pdo7SBRpygchxeNgGQwer1opSsg97E
	 b3CngwacByrT6zgWaHbwzRqbb+9qJI0SuntMJjSRVQaQ8PGRbNk02DWvZKVu9IbqjD
	 dq6AkjhHZnQgfaPaeWjytrJ4wWZnLCakAnK1OeNZdwEUrRfNq0Bhvk8TopOgHmlFNp
	 6Hizw+LgunuNA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 76DF03B2A4
 for <cake@lists.bufferbloat.net>; Mon, 25 May 2020 07:58:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590407922;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/4UdfERIomDYx1y7lLZkXbzfrogm2OhMUwnfP0yIgxA=;
 b=YLkkUEtkPHizz590zIWaz0vgQRyJn5623tV/BYHA+5FGbwrAvnBu66qt1bwrWuK0SQ9cU1
 NFiHFT7LmaVBCVLvg/ecMo7YdWmMqHmUg5nEKHlhvsFzlcOXb7bJSDpWd86RbvZi2je9o5
 6jd/Y7uHU+j+6BPeBj4tZ0zzWl6IuxU=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-84-0YjCTSUrOLuqfZqfHBPAPw-1; Mon, 25 May 2020 07:58:37 -0400
X-MC-Unique: 0YjCTSUrOLuqfZqfHBPAPw-1
Received: by mail-ej1-f70.google.com with SMTP id qn27so6291321ejb.11
 for <cake@lists.bufferbloat.net>; Mon, 25 May 2020 04:58:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=/4UdfERIomDYx1y7lLZkXbzfrogm2OhMUwnfP0yIgxA=;
 b=tDCZojIWvdo+JOIav7gf9OUgWMVf7S5J2UySYP1dxR0x46VDYtWPvw94vDaIV8cvil
 Ly7bd0iC4P50gLfIO3oVkYGV3rFp6Uff3ca9behHi6H6UoodlWQiHxbSPv58BE1PVM3u
 +4dsZrJhihzDd7jnIb+cfVyJZmA6awAsXzNypnTHoEfw7aUMDO2IAhpODRs6mAt04084
 Ejh/fXRgMvkFtzM4B5aRV44y6oSnGHejCDau2BFUhET0aFwPCytwHCqQlUvafvAO2NA4
 XgYbNWRjP3kmtv4JN2n9iqDseKnweCwdmGXY+tMNL9/kzmBAC9TkEBc+9ffxoyDKntTL
 cuRA==
X-Gm-Message-State: AOAM532ntu+BJd2sp/14gF0+jRnukl7Q8GlHLthoEkZDbXh7GZ/3tfht
 6UkTyDIn4zOJFf5Pp6aeS9NujQrLOMqq0ZFUSGoa2s/82Z6SDr5oYAOXMJUxKzjwaRGJQwFec5R
 JJi/Dr8trt7CoNEfm75tygA==
X-Received: by 2002:a50:d7c7:: with SMTP id m7mr15273517edj.101.1590407916313; 
 Mon, 25 May 2020 04:58:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxk85FGYZ+nV2hMj8v5LdDRS/cemYV7JIFFC1EvEBEAv0AP79Ej5xyA1P343osQNrpZu8KwqA==
X-Received: by 2002:a50:d7c7:: with SMTP id m7mr15273496edj.101.1590407916070; 
 Mon, 25 May 2020 04:58:36 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id b14sm15585870edx.93.2020.05.25.04.58.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 04:58:35 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id E93BA18150E; Mon, 25 May 2020 13:58:33 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jonathan Morton <chromatix99@gmail.com>,
 Avakash bhat <avakash261@gmail.com>
In-Reply-To: <48938727-0CFF-4B72-B82B-49E0535E9B82@gmail.com>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
 <875zd6h3bu.fsf@toke.dk>
 <CAA93jw5OP3EfedB5zDPZNYdQaH+LkhUiwaLzMDbyvnTpxZdqSw@mail.gmail.com>
 <7FCC9B1F-7F4B-43E8-B557-88B2A845C28B@gmail.com>
 <CAA93jw6qnP0r8LcUxykUtbwMuv0WcoCvtseLC4rLdbhpwnOU-Q@mail.gmail.com>
 <CAC8NkTCQQ=8Zy-YiYKP=8VLRzmrMH8g1ya1o=6iZAgY2vvbxAw@mail.gmail.com>
 <48938727-0CFF-4B72-B82B-49E0535E9B82@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 25 May 2020 13:58:33 +0200
Message-ID: <87y2pgi5ue.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] Query on ACK
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
Cc: Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Cake List <cake@lists.bufferbloat.net>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Sm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyaXRlczoKCj4+IE9uIDI1
IE1heSwgMjAyMCwgYXQgODoxNyBhbSwgQXZha2FzaCBiaGF0IDxhdmFrYXNoMjYxQGdtYWlsLmNv
bT4gd3JvdGU6Cj4+IAo+PiBXZSBoYWQgYW5vdGhlciBxdWVyeSB3ZSB3b3VsZCBsaWtlIHRvIHJl
c29sdmUuIFdlIHdhbnRlZCB0byB2ZXJpZnkgdGhlIHdvcmtpbmcgb2YgYWNrIGZpbHRlciBpbiBu
cy0zLCAKPj4gc28gd2UgZGVjaWRlZCB0byByZXBsaWNhdGUgdGhlIEZpZyA2IGdyYXBoIGluIHRo
ZSBDQUtFIHBhcGVyKGh0dHBzOi8vaWVlZXhwbG9yZS5pZWVlLm9yZy9kb2N1bWVudC84NDc1MDQ1
KS4gCj4+IFdoaWxlIHRyeWluZyB0byBidWlsZCB0aGUgdG9wb2xvZ3kgd2UgcmVhbGl6ZWQgdGhh
dCB3ZSBkbyBub3Qga25vdyB0aGUgbnVtYmVyIG9mIHBhY2tldHMgb3IgYnl0ZXMgc2VudCBmcm9t
IAo+PiB0aGUgc291cmNlIHRvIHRoZSBkZXN0aW5hdGlvbiBmb3IgZWFjaCBvZiB0aGUgVENQIGNv
bm5lY3Rpb25zICggV2UgYXJlIGFzc3VtaW5nIGl0IGlzIGEgcG9pbnQgdG8gcG9pbnQgY29ubmVj
dGlvbiB3aXRoIDQgVENQIGZsb3dzKS4gCj4+IAo+PiBDb3VsZCB3ZSBnZXQgYSBiaXQgbW9yZSBk
ZXRhaWxzIGFib3V0IGhvdyB0aGUgZXhwZXJpbWVudCB3YXMgY29uZHVjdGVkPwo+Cj4gSSBiZWxp
ZXZlIHRoaXMgd2FzIGNvbmR1Y3RlZCB1c2luZyB0aGUgUlJVTCB0ZXN0IGluIEZsZW50LiAgVGhp
cyBvcGVucwo+IGZvdXIgc2F0dXJhdGluZyBUQ1AgZmxvd3MgaW4gZWFjaCBkaXJlY3Rpb24sIGFu
ZCBhbHNvIHNlbmRzIGEgc21hbGwKPiBhbW91bnQgb2YgbGF0ZW5jeSBtZWFzdXJpbmcgdHJhZmZp
Yy4gIE9uIHRoaXMgb2NjYXNpb24gSSBkb24ndCB0aGluawo+IHdlIGFkZGVkIGFueSBzaW11bGF0
ZWQgcGF0aCBkZWxheXMsIGFuZCBvbmx5IGltcG9zZWQgdGhlIHF1b3RlZAo+IGFzeW1tZXRyaWMg
YmFuZHdpZHRoIGxpbWl0cyAoMzBNYnBzIGRvd24sIDFNYnBzIHVwKS4KClNlZSBodHRwczovL3d3
dy5jcy5rYXUuc2UvdG9ob2pvL2Nha2UvIC0gdGhlIGxpbmsgdG8gdGhlIGRhdGEgZmlsZXMgbmVh
cgp0aGUgYm90dG9tIG9mIHRoYXQgcGFnZSBhbHNvIGNvbnRhaW5zIHRoZSBGbGVudCBiYXRjaCBm
aWxlIGFuZCBzZXR1cApzY3JpcHRzIHVzZWQgdG8gcnVuIHRoZSB3aG9sZSB0aGluZy4KCihBbmQg
dGhlcmUncyBubyBleHBsaWNpdCAibnVtYmVyIG9mIGJ5dGVzIHNlbnQiLCBidXQgcmF0aGVyIHRo
ZSBmbG93cwphcmUgY2FwYWNpdHktc2Vla2luZyBmbG93cyBydW5uaW5nIGZvciBhIGxpbWl0ZWQg
KnRpbWUqKS4KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
