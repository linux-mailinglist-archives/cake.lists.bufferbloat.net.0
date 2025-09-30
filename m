Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5D9BAC289
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 11:01:13 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id F096170E5A7;
	Tue, 30 Sep 2025 11:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1759222872;
	bh=5lZpltdvQUTL9N1fbpK2lxNkjcab+Y5rJ0mMNWsCjpA=;
	h=In-Reply-To:Date:Cc:References:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=U01fBbnnVhikOtAew4qVfJz93kdtY+hT0zmn/Gw8KzdUAJJ1wfkgrq3Og0mJEccXO
	 55GCrbhrdcBYBDdZuOZQWlTfPVYTn8lunKV42tpjQQavbIHrnRO8hp1YatRXylZdwK
	 rJkBCajUWNTj3A2spUiw8gp+T4uKSMvDSxce8xZ0L1RCVTnWFSEAVzzISQ0oKt48cE
	 8hgvmBiqN7pqxAzTrMQtSfqBds0xuh/o7972ktRob47vFsl1XqQiSOB4hR2TpUmTqB
	 ztRel41ziDsv65QdGL4noBN53dYcnGHNGmgnu9Lh+JSbW7dT9bAFIRJgVt68YLzVP6
	 C4lWj8P5feJHQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759222872;
 b=CcDTdYk7RgkM1eDzLgGFPC21A3ON6wz53Jcjxnd6W2YEMYIHSmops/t/8KFFYmApyPLpS
 838S4yHu0LsHIow9QbT+fJjr2RGTVygtAPaRveYT94xnLlC/qn0V5e/ox2oCN31+Mu0Zlqd
 2BVJqXDOSnoTwhcDJdg3g/Kz98FqAAs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759222872; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pAZcfhwsmVh4NxUTndJZvtrMthcbX36qZP82ltap+BA=;
 b=xus6tL+3f25FkJJmQwj1AroHUi5ZeDjapCTXSFSLBod5Fp6y/0GlH5NeDycwPtBNtaY9w
 vRJS0C/e/3uOjgxOnysjHP+g5S4p1aIGjm2ntx3UzL06lpxw455JU+D0yKUtcdO77/Y8eHT
 zpHeSPJCJeV2zIyJqeFDWgESsKmrI3Q=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmx.de header.i=moeller0@gmx.de;
 arc=none;
 dmarc=pass header.from=gmx.de policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmx.de header.i=moeller0@gmx.de;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmx.de
 policy.dmarc=quarantine
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by mail.toke.dk (Postfix) with ESMTPS id 769E970E592
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 11:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1759222869; x=1759827669; i=moeller0@gmx.de;
	bh=NXK8+l5H0LdnLUo0p6EXnH7+4M0oz6nhOmagzpWyKYY=;
	h=X-UI-Sender-Class:Content-Type:Mime-Version:Subject:From:
	 In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:
	 References:To:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=tNZPJTL7RJUYjFqTaxuhniFEoWjK48HwrUSyyG5YIr22Df+/KnCVhxkuyGSAA/se
	 cISdF6aOPS1pY/n3Qd1gm63+B5cD2Qo6kddXIppDxmjkKvhwY8PvWuR++5ZLQbi/R
	 HSomk5tLB2paqHQuUjbeqTdw8fH5s/1qPmz2uMxbgO/TgUFjDcRpTdroXmJCbHoE8
	 hisU5t8D2wJCcIRk65h1yD3dn9PQapW0iUHsEeLgyCutLLP2hEiBIV8r6h44Op9s/
	 rQ5SCFAernKxNVkQ8XkY0UoOsTlORWXAMaondpcnzEn46xYxAyOMtANid22sEwNx6
	 VCylcnsDUQP9DmDEEw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M26r3-1v12KK2841-0032L0; Tue, 30
 Sep 2025 11:01:09 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
In-Reply-To: <D0B5EA4D-B238-44F5-93BB-2CD4E6D1CBB8@gmail.com>
Date: Tue, 30 Sep 2025 11:00:58 +0200
Cc: dave seddon <dave.seddon.ca@gmail.com>,
 David Lang <david@lang.hm>,
 m@jaap.pro,
 "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>,
 Frantisek Borsik <frantisek.borsik@gmail.com>
Message-Id: <68948D96-1D53-47DE-BE1C-DADB70FC6D7A@gmx.de>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <2064666241.42029.1759061544846@app.mailbox.org>
 <alpine.DEB.2.02.2509280523210.14652@nftneq.ynat.uz>
 <CAJUtOOj-FfPic8FPjy-QneCsvbtwtn4Zsxs+1yEsUqytEOEheg@mail.gmail.com>
 <CANypexTvXAdY577pxorqCKL45av3gw+fdupO6xr+gN5p=Wxq=Q@mail.gmail.com>
 <962896BA-6EE5-4815-B6F9-AC50B7252642@gmail.com>
 <C48271F4-4ADF-4FCA-ADA8-72C4B74D1091@gmx.de>
 <D0B5EA4D-B238-44F5-93BB-2CD4E6D1CBB8@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3826.700.81)
X-Provags-ID: V03:K1:j5cum7EgZY5ITaAizCB80oFF7D40JaK8wUBuGkGpNZqcZgq7OBJ
 ifvRWOxV1lzU9S2+AhhMUFk9Eie8zYMicWSVuX5iZIYmGg9ROV/RFVb+02kgM5Vns7zm+4R
 CzEvHkWqYviyf9AjT4dYvvcYiE1I3TeJpcGUou7GKvE49puon+F9dYwHcrS5GtWJ6ATiY5q
 dPmTpFI33Zu9abRpBgcPA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:SOtx79NHKVk=;r+q6XRjU6JZXA/0Xw1wqT85dEW0
 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
 O+mP6E66Q+2wg0u3Xng5K2vzTk=
Message-ID-Hash: CYZ6LHZXMFEQJ64MCVZ4QF3O3INHYSRG
X-Message-ID-Hash: CYZ6LHZXMFEQJ64MCVZ4QF3O3INHYSRG
X-MailFrom: moeller0@gmx.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/68948D96-1D53-47DE-BE1C-DADB70FC6D7A@gmx.de/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jonathan,


> On 30. Sep 2025, at 10:59, Jonathan Morton <chromatix99@gmail.com> wrote:
> 
>> On 30 Sep, 2025, at 9:09 am, Sebastian Moeller <moeller0@gmx.de> wrote:
>> 
>> I would really like to see some tc -s qdisc output from this network under load, as that should be informative if any twaeks are necessary at all.
> 
> I think the point is that this is a conference/event network that will be set up transiently.  By the time you get a realistic workload to measure the behaviour of, you're in production.

Indeed, this approach would do little for the up-coming SCALE N, but it should be instructive for SCALA N+1.

Regards
	Sebastian

> 
> - Jonathan Morton


_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
